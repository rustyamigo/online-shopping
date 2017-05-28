<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<%@include file="../shared/flows-header.jsp" %>
		
	<div class="container">
		
<div class="row">
   
   <div class="col-md-6 col-md-offset-3">
    
    <div class="panel panel-primary">
    
     <div class="panel-heading">
      <h4>Sign Up - Address</h4>
     </div>
     
     <div class="panel-body">
          
      <sf:form
       method="POST"      
       class="form-horizontal"
       id="billingForm"
		modelAttribute="billing"
      >
      
       
       <div class="form-group">
        <label class="control-label col-md-4" for="addressLineOne">Address Line One</label>
        <div class="col-md-8">
         <sf:input type="text" path="addressLineOne" class="form-control"
          placeholder="Enter Address Line One" />
        </div>
       </div>

       <div class="form-group">
        <label class="control-label col-md-4" for="addressLineTwo">Address Line Two</label>
        <div class="col-md-8">
         <sf:input type="text" path="addressLineTwo" class="form-control"
          placeholder="Enter Address Line Two" />
        </div>
       </div>

       <div class="form-group">
        <label class="control-label col-md-4" for="city">City</label>
        <div class="col-md-8">
         <sf:input type="text" path="city" class="form-control"
          placeholder="Enter City Name" />
        </div>
       </div>
       
       <div class="form-group">
        <label class="control-label col-md-4" for="postalCode">Postal Code</label>
        <div class="col-md-8">
         <sf:input type="text" path="postalCode" class="form-control"
          placeholder="XXXXXX" />
        </div>
       </div>       
      
       <div class="form-group">
        <label class="control-label col-md-4" for="state">State</label>
        <div class="col-md-8">
         <sf:input type="text" path="state" class="form-control"
          placeholder="Enter State Name" />
        </div>
       </div>

       <div class="form-group">
        <label class="control-label col-md-4" for="country">Country</label>
        <div class="col-md-8">
         <sf:input type="text" path="country" class="form-control"
          placeholder="Enter Country Name" />
        </div>
       </div>
       
       
       <div class="form-group">
        <div class="col-md-offset-4 col-md-8">
        	<!-- submit button for moving to the personal -->
			<button type="submit" class="btn btn-primary"
				name="_eventId_personal"
			>
				
				<span class="glyphicon glyphicon-chevron-left"></span> Previous
			
			</button>			

        	<!-- submit button for moving to the confirm -->
			<button type="submit" class="btn btn-primary"
				name="_eventId_confirm"
			>
				
				Next <span class="glyphicon glyphicon-chevron-right"></span>
			
			</button>			

        </div>
       </div>
      
      
      </sf:form>     
     </div>
    </div>
   </div>
  </div>		
	
	</div>

<%@include file="../shared/flows-footer.jsp" %>