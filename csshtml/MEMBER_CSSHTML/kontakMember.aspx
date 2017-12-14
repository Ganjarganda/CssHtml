<%@ Page Title="" Language="VB" MasterPageFile="~/USER_CSSHTML/MemberMaster.master" %>

<script runat="server">
    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Dim username As String = CType(Session.Item("username"), String)
        Label1.Text = username
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- contact -->
	<div class="contact">
		<div class="container">
			<div class="map">
				<h3>View on map</h3>
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3144.899142009709!2d23.72354!3d37.979482999999995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14a1bd238977fb45%3A0xbdf5a6106a003293!2sFashion+Workshop+by+Vicky+Kaya!5e0!3m2!1sen!2sin!4v1440569426817" frameborder="0" style="border:0" allowfullscreen></iframe>
			</div>
			<div class="contact-grids">
				<div class="col-md-3 contact-grid">
					<div class="call">
						<div class="col-xs-3 contact-grdl">
							<span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
						</div>
						<div class="col-xs-9 contact-grdr">
							<ul>
								<li>+3402 890 679</li>
								<li>+5356 890 679</li>
							</ul>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="address">
						<div class="col-xs-3 contact-grdl">
							<span class="glyphicon glyphicon-send" aria-hidden="true"></span>
						</div>
						<div class="col-xs-9 contact-grdr">
							<ul>
								<li>345 Diamond Street,</li>
								<li>Greece.</li>
							</ul>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div class="mail">
						<div class="col-xs-3 contact-grdl">
							<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
						</div>
						<div class="col-xs-9 contact-grdr">
							<ul>
								<li><a href="mailto:info@example.com">info@example.com</a></li>
							</ul>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-5 contact-grid">
					<form>
						<input type="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
						<input type="email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
						<textarea type="text"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}" required="">Message...</textarea>
						<input type="submit" value="Send" >
					</form>
				</div>
				<div class="col-md-4 contact-grid">
					<div class="newsletter1">
						<h3><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>Newsletter</h3>
					</div>
					<form>
						<input type="email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
						<input type="submit" value="Subscribe" >
					</form>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //contact -->
</asp:Content>

