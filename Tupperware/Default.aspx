<%@ Page Title="Default" Language="C#" MasterPageFile="~/Tupperware.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Tupperware.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content-wrap">
	<div id="slider">
		<div id="top-slider">
			<div class="w3-content w3-section">
			<img class="mySlides" src="image/tupperware_lady.jpg" alt= "tupperware_lady" width="780" height="330"/>
			<img class="mySlides" src="image/tupperware1.jpg" alt= "tupperware1" width="780" height="330"/>
			<img class="mySlides" src="image/tupperware2.jpg" alt= "tupperware2" width="780" height="330"/>
			<img class="mySlides" src="image/tupperware3.jpg" alt= "tupperware3" width="780" height="330"/>
			<img class="mySlides" src="image/tupperware4.jpg" alt= "tupperware4" width="780" height="330"/>
			<img class="mySlides" src="image/tupperware5.jpg" alt= "tupperware5" width="780" height="330"/>
			<img class="mySlides" src="image/tupperware6.jpg" alt= "tupperware6" width="780" height="330"/>
			</div>
			
			<script src="js/slider.js"></script>
		</div>
	</div>
		<h3>Instock</h3>
		
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="rptrProducts">
                        <HeaderTemplate>
                            <div>
                        </HeaderTemplate>
                            <ItemTemplate>
                                <div>
                                    <a href="<%# Eval("Id", "Product.aspx?Id={0}") %>">
                                        <%#Eval ("Name") %>
                                    </a>
                                </div>
                            </ItemTemplate>
                         <FooterTemplate>
                         </div>
                         </FooterTemplate>
                </asp:Repeater>
                <asp:SqlDataSource ID="rptrProducts" runat="server" ConnectionString="<%$ ConnectionStrings:db_1525607_co5027ConnectionString %>" SelectCommand="SELECT * FROM [tblProductList]"></asp:SqlDataSource>

		<div class="responsive">
			<div class="gallery">
				<a target="_blank" href="image/Frosty-Blue-Collection.png">
					<img src="image/Frosty-Blue-Collection.png" alt="frosty-blue-collection" width="300" height="200"/>
				</a>
				<div class="desc">Frosty Blue Collectione Collection</div>
			</div>
		</div>
		
		<div class="responsive">
			<div class="gallery">
				<a target="_blank" href="image/XTreme-Meal-Box.jpg">
					<img src="image/XTreme-Meal-Box.jpg" alt="xtreme-meal-box" width="300" height="200"/>
				</a>
				<div class="desc">X-Tream Meal Box</div>
			</div>
		</div>
		
		<div class="responsive">
		  <div class="gallery">
			<a target="_blank" href="image/XTreme-Cafe-Mug.jpg">
			  <img src="image/XTreme-Cafe-Mug.jpg" alt="xtreme-cafe-mug" width="300" height="200"/>
			</a>
			<div class="desc">X-Treme Cafe Mug</div>
		  </div>
		</div>
		
		<div class="responsive">
		  <div class="gallery">
			<a target="_blank" href="image/Bread-N-Buddy.png">
			  <img src="image/Bread-N-Buddy.png" alt="bread-n'buddy" width="300" height="200"/>
			</a>
			<div class="desc">Bread N'Buddy</div>
		  </div>
		</div>
		
		<div class="responsive">
		  <div class="gallery">
			<a target="_blank" href="image/Kiddie-Tumbler-sky.png">
			  <img src="image/Kiddie-Tumbler-Sky.png" alt="kiddie-tumbler-sky" width="300" height="200"/>
			</a>
			<div class="desc">Kiddie Tumbler Sky</div>
		  </div>
		</div>
		
		<div class="responsive">
		  <div class="gallery">
			<a target="_blank" href="image/T-For-2.png">
			  <img src="image/T-For-2.png" alt="t-for-2" width="300" height="200"/>
			</a>
			<div class="desc">T For 2</div>
		  </div>
		</div>
		
		<div class="responsive">
		  <div class="gallery">
			<a target="_blank" href="image/Cutie-Bag.png">
			  <img src="image/Cutie-Bag.png" alt="cutie-bag" width="300" height="200"/>
			</a>
			<div class="desc">Cutie Bag</div>
		  </div>
		</div>
		
		<div class="responsive">
		  <div class="gallery">
			<a target="_blank" href="image/Slim-Line-2L.png">
			  <img src="image/Slim-Line-2L.png" alt="slim-line-2l" width="300" height="200"/>
			</a>
			<div class="desc">Slim Line 2L</div>
		  </div>
		</div>
		
		<div class="floating-box"></div>
		
		<div class="floating-box"></div>
		
		<div class="floating-box"></div>
</div>
</asp:Content>
