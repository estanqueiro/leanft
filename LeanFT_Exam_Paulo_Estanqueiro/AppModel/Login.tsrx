<?xml version="1.0" encoding="utf-8"?>
<applicationModel>
  <name>Application Model</name>
  <className>Login</className>
  <objects>
    <object technology="Web" type="Page">
      <name>Commons Elements - Mahara Demo</name>
      <codeName>pageCommons</codeName>
      <identification />
      <children>
        <object technology="Web" type="Button">
          <name>Show main menu</name>
          <codeName>btnMainMenu</codeName>
          <description />
          <identification>
            <properties>
              <property name="TagName" type="string">BUTTON</property>
              <property name="XPath" type="string">//HEADER[1]/DIV[1]/DIV[1]/DIV[2]/BUTTON[1]</property>
            </properties>
          </identification>
        </object>
        <object technology="Web" type="Link">
          <name>Dashboard</name>
          <codeName>lnkDashboard</codeName>
          <description />
          <identification>
            <properties>
              <property name="TagName" type="string">A</property>
              <property name="XPath" type="string">//LI/A[normalize-space()="Dashboard"]</property>
            </properties>
          </identification>
        </object>
        <object technology="Web" type="Link">
          <name>Logout</name>
          <codeName>lnkLogout</codeName>
          <description />
          <identification>
            <properties>
              <property name="Id" type="string">logoutbutton</property>
              <property name="CSSSelector" type="string">#logoutbutton</property>
            </properties>
          </identification>
        </object>
      </children>
    </object>
    <object technology="Web" type="Page">
      <name>Home - Mahara Demo</name>
      <codeName>pageHomeMahara</codeName>
      <description />
      <identification />
      <children>
        <object technology="Web" type="EditField">
          <name>login_username</name>
          <codeName>inpUsername</codeName>
          <description />
          <identification>
            <properties>
              <property name="Id" type="string">login_login_username</property>
            </properties>
          </identification>
        </object>
        <object technology="Web" type="EditField">
          <name>login_password</name>
          <codeName>inpPassword</codeName>
          <description />
          <identification>
            <properties>
              <property name="Id" type="string">login_login_password</property>
            </properties>
          </identification>
        </object>
        <object technology="Web" type="Button">
          <name>Login</name>
          <codeName>btnLogin</codeName>
          <description />
          <identification>
            <properties>
              <property name="ButtonType" type="string">submit</property>
              <property name="Id" type="string">login_submit</property>
            </properties>
          </identification>
        </object>
        <object technology="Web" type="WebElement">
          <name>You have been logged out successfully</name>
          <codeName>msgLoggedOut</codeName>
          <description />
          <identification>
            <properties>
              <property name="TagName" type="string">DIV</property>
              <property name="XPath" type="string">//DIV[@id="messages"]/DIV[1]/DIV[1]</property>
            </properties>
            <index>1</index>
          </identification>
        </object>
      </children>
    </object>
    <object technology="Web" type="Page">
      <name>Logged Page - Mahara Demo</name>
      <codeName>pageLoggedUser</codeName>
      <description />
      <identification />
      <children>
        <object technology="Web" type="Link">
          <name>Logged User</name>
          <codeName>strUser</codeName>
          <description />
          <identification>
            <properties>
              <property name="TagName" type="string">A</property>
              <property name="CSSSelector" type="string">div#sb-profile &gt; div &gt; h3 &gt; a:nth-child(1)</property>
            </properties>
          </identification>
        </object>
        <object technology="Web" type="WebElement">
          <name>Link Admin Menu</name>
          <codeName>lnkAdminMenu</codeName>
          <description />
          <identification>
            <properties>
              <property name="TagName" type="string">SPAN</property>
              <property name="XPath" type="string">//BUTTON[2]/SPAN[@role="presentation"][1]</property>
            </properties>
          </identification>
        </object>
        <object technology="Web" type="Link">
          <name>Link People</name>
          <codeName>lnkPeople</codeName>
          <description />
          <identification>
            <properties>
              <property name="TagName" type="string">A</property>
              <property name="XPath" type="string">//UL[@id="navadmin"]/LI[1]/A[1]</property>
            </properties>
          </identification>
        </object>
        <object technology="Web" type="Link">
          <name>Link Add User</name>
          <codeName>lnkAddUser</codeName>
          <description />
          <identification>
            <properties>
              <property name="TagName" type="string">A</property>
              <property name="XPath" type="string">//LI/A[normalize-space()="Add user"]</property>
            </properties>
          </identification>
        </object>
        <object technology="Web" type="Link">
          <name>Legal</name>
          <codeName>lnkLegal</codeName>
          <description />
          <identification>
            <properties>
              <property name="TagName" type="string">A</property>
              <property name="XPath" type="string">//FOOTER[1]/DIV[1]/UL[1]/LI[1]/A[1]</property>
            </properties>
          </identification>
        </object>
      </children>
    </object>
    <object technology="Web" type="Page">
      <name>Add User - Mahara Demo</name>
      <codeName>pageAddUser</codeName>
      <description />
      <identification />
      <children>
        <object technology="Web" type="EditField">
          <name>firstname</name>
          <codeName>inpFirstName</codeName>
          <description />
          <identification>
            <properties>
              <property name="Id" type="string">adduser_firstname</property>
            </properties>
          </identification>
        </object>
        <object technology="Web" type="EditField">
          <name>lastname</name>
          <codeName>inpLastName</codeName>
          <description />
          <identification>
            <properties>
              <property name="Id" type="string">adduser_lastname</property>
            </properties>
          </identification>
        </object>
        <object technology="Web" type="EditField">
          <name>email</name>
          <codeName>inpEmail</codeName>
          <description />
          <identification>
            <properties>
              <property name="Id" type="string">adduser_email</property>
            </properties>
          </identification>
        </object>
        <object technology="Web" type="EditField">
          <name>username</name>
          <codeName>inpUsername</codeName>
          <description />
          <identification>
            <properties>
              <property name="Id" type="string">adduser_username</property>
            </properties>
          </identification>
        </object>
        <object technology="Web" type="EditField">
          <name>password</name>
          <codeName>inpPassword</codeName>
          <description />
          <identification>
            <properties>
              <property name="Id" type="string">adduser_password</property>
            </properties>
          </identification>
        </object>
        <object technology="Web" type="Button">
          <name>Button Add</name>
          <codeName>btnAdd</codeName>
          <description />
          <identification>
            <properties>
              <property name="Id" type="string">adduser_submit</property>
            </properties>
          </identification>
        </object>
      </children>
    </object>
    <object technology="Web" type="Page">
      <name>Account Created - Mahara Demo</name>
      <codeName>pageNewAccount</codeName>
      <description />
      <identification />
      <children>
        <object technology="Web" type="WebElement">
          <name>User Created</name>
          <codeName>strAddSuccessful</codeName>
          <description />
          <identification>
            <properties>
              <property name="TagName" type="string">DIV</property>
              <property name="XPath" type="string">//DIV[@id="messages"]/DIV[1]/DIV[1]</property>
            </properties>
            <index>1</index>
          </identification>
        </object>
        <object technology="Web" type="Button">
          <name>User Menu</name>
          <codeName>btnUserMenu</codeName>
          <description />
          <identification>
            <properties>
              <property name="TagName" type="string">BUTTON</property>
              <property name="XPath" type="string">//HEADER[1]/DIV[1]/DIV[1]/DIV[2]/BUTTON[3]</property>
            </properties>
          </identification>
        </object>
      </children>
    </object>
    <object technology="Web" type="Page">
      <name>Dashboard - Mahara Demo</name>
      <codeName>pageDashboard</codeName>
      <description />
      <identification />
      <children>
        <object technology="Web" type="Link">
          <name>Paula Paulsen</name>
          <codeName>strNewUser</codeName>
          <description />
          <identification>
            <properties>
              <property name="TagName" type="string">A</property>
              <property name="XPath" type="string">//DIV[@id="sb-profile"]/DIV/H3[normalize-space()="Paula Paulsen"]/A[1]</property>
            </properties>
          </identification>
        </object>
        <object technology="Web" type="WebElement">
          <name>Your new password has been saved</name>
          <codeName>strNewPasswordSaved</codeName>
          <description />
          <identification>
            <properties>
              <property name="TagName" type="string">DIV</property>
              <property name="XPath" type="string">//DIV[@id="messages"]/DIV[1]/DIV[1]</property>
            </properties>
          </identification>
        </object>
        <object technology="Web" type="Button">
          <name>Edit dashboard</name>
          <codeName>strDashboard</codeName>
          <description />
          <identification>
            <properties>
              <property name="Id" type="string">editdashboard</property>
            </properties>
          </identification>
        </object>
        <object technology="Web" type="Button">
          <name>                                Show user menu                                                            </name>
          <codeName>btnUserMenu</codeName>
          <description />
          <identification>
            <properties>
              <property name="TagName" type="string">BUTTON</property>
              <property name="XPath" type="string">//HEADER[1]/DIV[1]/DIV[1]/DIV[2]/BUTTON[2]</property>
            </properties>
          </identification>
        </object>
        <object technology="Web" type="Link">
          <name>Engage</name>
          <codeName>lnkEngage</codeName>
          <description />
          <identification>
            <properties>
              <property name="TagName" type="string">A</property>
              <property name="XPath" type="string">//LI/A[normalize-space()="Engage"]</property>
            </properties>
          </identification>
        </object>
        <object technology="Web" type="Link">
          <name>People</name>
          <codeName>lnkPeople</codeName>
          <description />
          <identification>
            <properties>
              <property name="TagName" type="string">A</property>
              <property name="XPath" type="string">//LI/A[normalize-space()="People"]</property>
            </properties>
            <index>0</index>
          </identification>
        </object>
      </children>
    </object>
    <object technology="Web" type="Page">
      <name>Legal - Mahara Demo</name>
      <codeName>pageLegal</codeName>
      <description />
      <identification />
      <children>
        <object technology="Web" type="WebElement">
          <name>Legal </name>
          <codeName>strLegal</codeName>
          <description />
          <identification>
            <properties>
              <property name="TagName" type="string">SPAN</property>
              <property name="XPath" type="string">//DIV[@id="main-column-container"]/H1[1]/SPAN[2]</property>
            </properties>
          </identification>
        </object>
        <object technology="Web" type="WebElement">
          <name>Privacy Statement</name>
          <codeName>statePrivacy</codeName>
          <description />
          <identification>
            <properties>
              <property name="TagName" type="string">SPAN</property>
              <property name="XPath" type="string">//DIV[@id="agreetoprivacy_maharaprivacy_container"]/DIV[1]/DIV[1]/LABEL[1]/SPAN[4]</property>
            </properties>
            <index>0</index>
          </identification>
        </object>
        <object technology="Web" type="WebElement">
          <name>Terms and Conditions</name>
          <codeName>stateTerms</codeName>
          <description />
          <identification>
            <properties>
              <property name="TagName" type="string">SPAN</property>
              <property name="XPath" type="string">//DIV[@id="agreetoprivacy_maharatermsandconditions_container"]/DIV[1]/DIV[1]/LABEL[1]/SPAN[4]</property>
            </properties>
            <index>1</index>
          </identification>
        </object>
        <object technology="Web" type="Button">
          <name>Save changes</name>
          <codeName>btnSaveChanges</codeName>
          <description />
          <identification>
            <properties>
              <property name="Id" type="string">agreetoprivacy_submit</property>
            </properties>
          </identification>
        </object>
      </children>
    </object>
    <object technology="Web" type="Page">
      <name>Agreements and Change Password - Mahara Demo</name>
      <codeName>pageAgreements</codeName>
      <description />
      <identification />
      <children>
        <object technology="Web" type="WebElement">
          <name>Privacy Agreement saved</name>
          <codeName>strPrivacyAgreementSaved</codeName>
          <description />
          <identification>
            <properties>
              <property name="TagName" type="string">DIV</property>
              <property name="XPath" type="string">//DIV[@id="messages"]/DIV[1]/DIV[1]</property>
            </properties>
            <index>0</index>
          </identification>
        </object>
        <object technology="Web" type="WebElement">
          <name>Terms and Conditions Agreement saved</name>
          <codeName>strTermsAgreementSaved</codeName>
          <description />
          <identification>
            <properties>
              <property name="TagName" type="string">DIV</property>
              <property name="XPath" type="string">//DIV[@id="messages"]/DIV[2]/DIV[1]</property>
            </properties>
            <index>1</index>
          </identification>
        </object>
        <object technology="Web" type="EditField">
          <name>password1</name>
          <codeName>inpPassword1</codeName>
          <description />
          <identification>
            <properties>
              <property name="Id" type="string">requiredfields_password1</property>
            </properties>
          </identification>
        </object>
        <object technology="Web" type="EditField">
          <name>password2</name>
          <codeName>inpPassword2</codeName>
          <description />
          <identification>
            <properties>
              <property name="Id" type="string">requiredfields_password2</property>
            </properties>
          </identification>
        </object>
        <object technology="Web" type="Button">
          <name>Submit</name>
          <codeName>btnSubmit</codeName>
          <description />
          <identification>
            <properties>
              <property name="Id" type="string">requiredfields_submit</property>
            </properties>
          </identification>
        </object>
      </children>
    </object>
    <object technology="Web" type="Page">
      <name>People - Mahara Demo</name>
      <codeName>pagePeople</codeName>
      <description />
      <identification />
      <children>
        <object technology="Web" type="WebElement">
          <name>People </name>
          <codeName>strPeople</codeName>
          <description />
          <identification>
            <properties>
              <property name="TagName" type="string">SPAN</property>
              <property name="XPath" type="string">//DIV[@id="main-column-container"]/H1[1]/SPAN[2]</property>
            </properties>
          </identification>
        </object>
        <object technology="Web" type="WebElement">
          <name>Results All People</name>
          <codeName>tblResultsAll</codeName>
          <description />
          <identification>
            <properties>
              <property name="TagName" type="string">DIV</property>
              <property name="Id" type="string">friendslist</property>
              <property name="XPath" type="string">//DIV[@id="friendslist"]</property>
            </properties>
          </identification>
        </object>
        <object technology="Web" type="WebElement">
          <name>First Page Results</name>
          <codeName>arrResultNames</codeName>
          <description />
          <identification>
            <properties>
              <property name="XPath" type="string">//DIV[@id="friendslist"]//h4/a/span</property>
            </properties>
          </identification>
        </object>
      </children>
    </object>
  </objects>
</applicationModel>