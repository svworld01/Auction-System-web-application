                <!-- START X-NAVIGATION -->
                <%
String name=(String)session.getAttribute("admin_name");
%>
                <ul class="x-navigation">
                    <li class="xn-logo">
                        <a href="index-2.html">I am Admin</a>
                        <a href="#" class="x-navigation-control"></a>
                    </li>
                    <li class="xn-profile">
                        <a href="#" class="profile-mini">
                            <img src="assets/images/users/avatar.jpg" alt="John Doe"/>
                        </a>
                        <div class="profile">
                            <div class="profile-image">
                                <img src="assets/images/users/avatar.jpg" alt="John Doe"/>
                            </div>
                            <div class="profile-data">
                                <div class="profile-data-name"><% out.print(name); %></div>
                                <div class="profile-data-title">Web Developer/Designer</div>
                            </div>
                            <div class="profile-controls">
                                <a href="pages-profile.html" class="profile-control-left"><span class="fa fa-info"></span></a>
                                <a href="pages-messages.html" class="profile-control-right"><span class="fa fa-envelope"></span></a>
                            </div>
                        </div>                                                                        
                    </li>
                    <li class="xn-title">Navigation</li>
                    <li class="active">
                        <a href="index-2.html"><span class="fa fa-desktop"></span> <span class="xn-text">Dashboard</span></a>                        
                    </li>                    
                    <li class="xn-openable">
                        <a href="#"><span class="fa fa-files-o"></span> <span class="xn-text">Category</span></a>
                        <ul>
                            <li><a href="add_category.jsp"><span class="fa fa-image"></span> Add New</a></li>
                            <li><a href="categry.jsp"><span class="fa fa-user"></span> Report</a></li>          
                        </ul>
                    </li>
                    <li class="xn-openable">
                        <a href="#"><span class="fa fa-file-text-o"></span> <span class="xn-text">Product</span></a>
                       <ul>
                            <li><a href="add_product.jsp"><span class="fa fa-image"></span> Add New</a></li>
                            <li><a href="product.jsp"><span class="fa fa-user"></span> Report</a></li>          
                        </ul>
                    </li>
                    <li class="xn-openable">
                        <a href="#"><span class="fa fa-file-text-o"></span> <span class="xn-text">Seller</span></a>
                       <ul>
                            <li><a href="add_sellers.jsp"><span class="fa fa-image"></span> Add New</a></li>
                            <li><a href="sellers.jsp"><span class="fa fa-user"></span> Report</a></li>          
                        </ul>
                    </li>
                    <li class="xn-openable">
                        <a href="#"><span class="fa fa-file-text-o"></span> <span class="xn-text">Customer</span></a>
                       <ul>
                            <li><a href="pages-gallery.html"><span class="fa fa-image"></span> Add New</a></li>
                            <li><a href="pages-profile.html"><span class="fa fa-user"></span> Report</a></li>          
                        </ul>
                    </li>
                   <li class="xn-openable">
                        <a href="#"><span class="fa fa-file-text-o"></span> <span class="xn-text">Auction</span></a>
                      
                    </li>
                    <li class="xn-openable">
                        <a href="#"><span class="fa fa-cogs"></span> <span class="xn-text">Setting</span></a>                        
                       
                    </li>   
                     <li class="xn-openable">
                        <a href="#"><span class="fa fa-briefcase"></span> <span class="xn-text">Help?</span></a>                        
                       
                    </li>   
                   
                   
                                  
                    <li>
                        <a href="maps.html"><span class="fa fa-map-marker"></span> <span class="xn-text">Maps</span></a>
                    </li>                    
                    
                    
                </ul>
                <!-- END X-NAVIGATION -->
           
