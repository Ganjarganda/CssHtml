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
    <br /><br />
    <center><h1>CSS</h1></center>
    <br />
    <!-- banner-bottom -->
    <div class="banner-bottom">
        <div class="container">
            <div class="banner-bottom-grids">
                <div class="col-md-3 banner-bottom-grid-left">
                    <div class="br-bm-gd-lt br-bm-gd-lt2">
                        <div class="overlay">
                            <div class="arrow-left"></div>
                            <div class="rectangle"></div>
                        </div>
                        <div class="health-pos">
                            <div class="health">
                                <ul>
                                    <li><a href="../MEMBER_CSSHTML/cssMember1.aspx" class="plane">Basic</a></li>
                                    <li>Pertemuan 1</li>
                                </ul>
                            </div>
                            <h3>But I must explain to you how all this mistaken idea.</h3>
                            <div class="dummy">
                                <p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut maiores alias.</p>
                            </div>
                            <div class="com-heart">
                                <ul>
                                    <li><a href="#"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>180 Comments</a></li>
                                    <li><a href="#"><span class="glyphicon glyphicon-heart" aria-hidden="true"></span>18,536 Likes</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 banner-bottom-grid-left">
                    <div class="br-bm-gd-lt br-bm-gd-lt2">
                        <div class="overlay">
                            <div class="arrow-left"></div>
                            <div class="rectangle"></div>
                        </div>
                        <div class="health-pos">
                            <div class="health">
                                <ul>
                                    <li><a href="../MEMBER_CSSHTML/cssMember1.aspx" class="plane">Basic 2</a></li>
                                    <li>Pertemuan 1</li>
                                </ul>
                            </div>
                            <h3>But I must explain to you how all this mistaken idea.</h3>
                            <div class="dummy">
                                <p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut maiores alias.</p>
                            </div>
                            <div class="com-heart">
                                <ul>
                                    <li><a href="#"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>180 Comments</a></li>
                                    <li><a href="#"><span class="glyphicon glyphicon-heart" aria-hidden="true"></span>18,536 Likes</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 banner-bottom-grid-left">
                    <div class="br-bm-gd-lt br-bm-gd-lt2">
                        <div class="overlay">
                            <div class="arrow-left"></div>
                            <div class="rectangle"></div>
                        </div>
                        <div class="health-pos">
                            <div class="health">
                                <ul>
                                    <li><a href="../MEMBER_CSSHTML/cssMember1.aspx" class="plane">Basic 3</a></li>
                                    <li>Pertemuan 2</li>
                                </ul>
                            </div>
                            <h3>But I must explain to you how all this mistaken idea.</h3>
                            <div class="dummy">
                                <p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut maiores alias.</p>
                            </div>
                            <div class="com-heart">
                                <ul>
                                    <li><a href="#"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>180 Comments</a></li>
                                    <li><a href="#"><span class="glyphicon glyphicon-heart" aria-hidden="true"></span>18,536 Likes</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 banner-bottom-grid-left">
                    <div class="br-bm-gd-lt br-bm-gd-lt3">
                        <div class="overlay">
                            <div class="arrow-left"></div>
                            <div class="rectangle"></div>
                        </div>
                        <div class="health-pos">
                            <div class="health">
                                <ul>
                                    <li><a href="../MEMBER_CSSHTML/cssMember1.aspx" class="general">Media</a></li>
                                    <li>Pertemuan 2</li>
                                </ul>
                            </div>
                            <h3>But I must explain to you how all this mistaken idea.</h3>
                            <div class="dummy">
                                <p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut maiores alias.</p>
                            </div>
                            <div class="com-heart">
                                <ul>
                                    <li><a href="#"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>150 Comments</a></li>
                                    <li><a href="#"><span class="glyphicon glyphicon-heart" aria-hidden="true"></span>15,536 Likes</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="banner-bottom-grids">
                <div class="col-md-3 banner-bottom-grid-left">
                    <div class="br-bm-gd-lt br-bm-gd-lt4">
                        <div class="overlay">
                            <div class="arrow-left"></div>
                            <div class="rectangle"></div>
                        </div>
                        <div class="health-pos">
                            <div class="health">
                                <ul>
                                    <li><a href="../MEMBER_CSSHTML/cssMember1.aspx" class="pol">Form</a></li>
                                    <li>Pertemuan 3</li>
                                </ul>
                            </div>
                            <h3>But I must explain to you how all this mistaken idea.</h3>
                            <div class="dummy">
                                <p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut maiores alias.</p>
                            </div>
                            <div class="com-heart">
                                <ul>
                                    <li><a href="#"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>450 Comments</a></li>
                                    <li><a href="#"><span class="glyphicon glyphicon-heart" aria-hidden="true"></span>12,965 Likes</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 banner-bottom-grid-left">
                    <div class="br-bm-gd-lt br-bm-gd-lt5">
                        <div class="overlay">
                            <div class="arrow-left"></div>
                            <div class="rectangle"></div>
                        </div>
                        <div class="health-pos">
                            <div class="health">
                                <ul>
                                    <li><a href="../MEMBER_CSSHTML/cssMember1.aspx" class="world">Table</a></li>
                                    <li>Pertemuan 3</li>
                                </ul>
                            </div>
                            <h3>But I must explain to you how all this mistaken idea.</h3>
                            <div class="dummy">
                                <p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut maiores alias.</p>
                            </div>
                            <div class="com-heart">
                                <ul>
                                    <li><a href="#"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>212 Comments</a></li>
                                    <li><a href="#"><span class="glyphicon glyphicon-heart" aria-hidden="true"></span>18,536 Likes</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 banner-bottom-grid-left">
                    <div class="br-bm-gd-lt br-bm-gd-lt6">
                        <div class="overlay">
                            <div class="arrow-left"></div>
                            <div class="rectangle"></div>
                        </div>
                        <div class="health-pos">
                            <div class="health">
                                <ul>
                                    <li><a href="../MEMBER_CSSHTML/cssMember1.aspx" class="national">Website 1</a></li>
                                    <li>Pertemuan 4</li>
                                </ul>
                            </div>
                            <h3>But I must explain to you how all this mistaken idea.</h3>
                            <div class="dummy">
                                <p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut maiores alias.</p>
                            </div>
                            <div class="com-heart">
                                <ul>
                                    <li><a href="#"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>261 Comments</a></li>
                                    <li><a href="#"><span class="glyphicon glyphicon-heart" aria-hidden="true"></span>15,536 Likes</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 banner-bottom-grid-left">
                    <div class="br-bm-gd-lt br-bm-gd-lt7">
                        <div class="overlay">
                            <div class="arrow-left"></div>
                            <div class="rectangle"></div>
                        </div>
                        <div class="health-pos">
                            <div class="health">
                                <ul>
                                    <li><a href="../MEMBER_CSSHTML/cssMember1.aspx" class="business">Website 2</a></li>
                                    <li>Pertemuan 4</li>
                                </ul>
                            </div>
                            <h3>But I must explain to you how all this mistaken idea.</h3>
                            <div class="dummy">
                                <p>Itaque earum rerum hic tenetur a sapiente delectus, ut aut maiores alias.</p>
                            </div>
                            <div class="com-heart">
                                <ul>
                                    <li><a href="#"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>297 Comments</a></li>
                                    <li><a href="#"><span class="glyphicon glyphicon-heart" aria-hidden="true"></span>9,996 Likes</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</asp:Content>

