<?php
$rpath = "../../";
require_once($_SERVER['DOCUMENT_ROOT'] . "/classes/stdf.php");

$DB = new DB('master');

$syear = $_GET['y'];
$smonth = $_GET['m'];
$sspec = $_GET['s'];
if(!is_numeric($sspec)) $sspec = -1000;

$data1 = array();
$data2 = array();
$days = date('t',mktime(0,0,0, $smonth, 1, $syear));
for($n=1;$n<=$days;$n++) { $data1[$n] = 0; $data2[$n] = 0; }

$sql = "SELECT add, l_add, extract(day from date) as day FROM stat_data_by_spec WHERE date>=? AND date<=? AND spec=?";

$q = $DB->rows($sql, $syear."-".$smonth."-01", $syear."-".$smonth."-".$days, $sspec);
$is_null = 1;
if($sspec!=0) {
    if($q) {
        foreach($q as $s) {
            if($s['add']!=0 || $s['l_add']!=0) $is_null = 0;
            $data1[$s['day']] = $s['add'];
            $data2[$s['day']] = $s['l_add'];
        }
    }
}

// Standard inclusions   
include("pChart/pData.class");
include("pChart/pChart.class");

// Dataset definition 
$DataSet = new pData;
$DataSet->AddPoint($data1,"S1");
$DataSet->AddPoint($data2,"S2");
$DataSet->AddPoint(array_keys($data1),"S3");
$DataSet->AddSerie("S1");
$DataSet->AddSerie("S2");
$DataSet->SetAbsciseLabelSerie("S3");
$DataSet->SetSerieName("Р’СЃРµРіРѕ","S1");
$DataSet->SetSerieName("Р–РёРІС‹С…","S2");


// Initialise the graph
$Test = new pChart(700,230);

if($is_null) $Test->setFixedScale(0,1,1);

$Test->setFontProperties("Fonts/tahoma.ttf",8);
$Test->setGraphArea(50,30,585,200);
$Test->drawFilledRoundedRectangle(7,7,693,223,5,240,240,240);
$Test->drawRoundedRectangle(5,5,695,225,5,230,230,230);
$Test->drawGraphArea(255,255,255,TRUE);
$Test->drawScale($DataSet->GetData(),$DataSet->GetDataDescription(),SCALE_NORMAL,150,150,150,TRUE,0,2);   
$Test->drawGrid(4,TRUE,230,230,230,50);


// Draw the cubic curve graph
$Test->drawCubicCurve($DataSet->GetData(),$DataSet->GetDataDescription());

// Finish the graph
$Test->setFontProperties("Fonts/tahoma.ttf",8);
$Test->drawLegend(600,30,$DataSet->GetDataDescription(),255,255,255);
$Test->setFontProperties("Fonts/tahoma.ttf",10);
$Test->drawTitle(50,22,"Р”РѕРїРѕР»РЅРёС‚РµР»СЊРЅР°СЏ СЃРїРµС†РёР°Р»РёР·Р°С†РёСЏ",50,50,50,585);
$Test->Stroke();
?>

