<?php if ($$uri[0]!='print'): ?>
{{include "header.tpl"}}
<?php endif; ?>

<div class="body c">
	<div class="main c">
        <?php if ($$uri[0]!='print'): ?>
					<h1 class="b-page__title">��� ����</h1>
		<?php endif; ?>
		<div class="rcol-big">
			<?php if ($$uri[0]!='print'): ?>
            {{include "bill/bill_menu.tpl"}}
            <?php endif; ?>
            
		      <div class="tabs-in bill-t-in">
                <?php if ($$uri[0]!='print'): ?>
				<a href="/bill/svyasnoy/print" target="_blank" id="a_print" class="btnr-mb bl-print"><span class="btn-lc"><span class="btn-m"><span class="btn-txt">�����������</span></span></span></a>
				<?php endif; ?>
                
				<h3>���������� ����� � &laquo;�������&raquo;</h3>
				<?php if ($$uri[0]!='print'): ?>
                                <div class="bill-info-logo">
                                    <img src="/images/cvyaznoy.png" alt="" /><br />
                                    <a href="http://www.svyaznoy.ru/" target="_blank">www.svyaznoy.ru</a>
                                </div>
				<?php endif; ?>
                                <div class="bill-info">
					<h4>�������� �������</h4>
					<p>������� � �������� � ����������� ��������� ������ ���� ��� ��� ������ ����������, ��� � ����� ����� ���������. ������ ������ ���������� �������� ������ �� ���������� ���������� ���������.</p>
					<p>�������������� ����� � ���������� ������ ��������� ��������� �������� �������������. ��� ������� ����������� � ������ ������.</p>

					<h4>���������� ����� ����� ��������</h4>
					<div class="ol">
						<b class="b1"></b>
						<b class="b2"></b>
						<div class="ol-in">
							<ol>
							   <li><span>������� � ����� ������ ����� �������� ��������.</span></li>
							   <li><span>������� � ������ ������� �����, �������� ��������� ����� ���������.</span></li>
							   <li><span>�������� Free-lance.ru ����� ������������ �������� (������� �� ������ Free-lance.ru �� ������� ��������). ����� ����� �� ������ �������� �������� ����������� ����������.</span></li>
							   <li><span>������� ��� ����� (������� �� ����������� ��� ����� �� ����) � ������� ����������.</span></li>
							   <li><span>������� ����������� ���������� ����� � �������� � ������� ������ ����������.</span></li>
							   <li><span>�������� � ��������� ��������� �� ������ �� ���������� �������� �������.</span></li>
							   <li><span>������ ����� ������������� ����������� �� ������ ���� �� Free-lance.ru.</span></li>
							</ol>
						</div>
						<b class="b2"></b>
						<b class="b1"></b>
					</div>

					<h4>���������� ����� ����� ����� ��������</h4>
					<div class="ol">
						<b class="b1"></b>
						<b class="b2"></b>
						<div class="ol-in">
							<ol>
							   <li><span>������� � ����� ������ � ����� ������� ��������.</span></li>
							   <li><span>�������� ������� � ������������� ���������� ������� ����� �� Free-lance.ru.</span></li>
							   <li><span>�������� ��� ����� (������� �� ����������� ��� ����� �� ����) � ����� � ������.</span></li>
							   <li><span>����������� ������������ ������ ����� �������� � �������.</span></li>
							   <li><span>������� ����������� ���������� �������� �������.</span></li>
							   <li><span>��������� ��� �� ����������� ����� �� ������ ���� �� Free-lance.ru.</span></li>
							</ol>
						</div>
						<b class="b2"></b>
						<b class="b1"></b>
					</div>
                    <p>�������� ���� �������� �� ��, ��� ������ � ������� ���������� ��� ����� ��������� �������� ������ �������������, ����������� �� ���������� ���������� ���������.</p>
					<p>�������� ��������: ��� ���������� ����� � �������� Free-lance.ru �� ����� ������� �� �������. ��� ���������� ����� � ������� ����� 49 ������ �������� ����� �� ������� ��������.</p>
					



					<div class="b-fon b-fon_bg_fcc b-fon_width_full">
							<b class="b-fon__b1"></b>
							<b class="b-fon__b2"></b>
							<div class="b-fon__body b-fon__body_pad_5"><strong>��������:</strong> �� �� ������ ��������������� ������ ��� ����������� ������ � ������� �������� � ��������. </div>
							<b class="b-fon__b2"></b>
							<b class="b-fon__b1"></b>
					</div>

					<h4>��� ������, ���� ������ �� ���� ����������� �� ����?</h4>
					<p>� ������, ���� ���������� ����� �� ���������, �������� ��� � <a href="/about/feedback/">������ ���������</a> � �������� ����� ���� �� ������ (����). �� ����������� ����� ��������.</p>
				</div>

			</div>
		</div>
	</div>
</div>

<?php if ($$uri[0]!='print'): ?>
{{include "footer.tpl"}}
<?php endif; ?>

<?php if ($$uri[0]=='print'): ?>
<script type="text/javascript">window.print();</script> 
<?php endif; ?>
