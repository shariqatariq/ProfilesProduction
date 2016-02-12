<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="About.ascx.cs" Inherits="Profiles.About.Modules.About.About" %>
<div class="pageTabs">
    <asp:Literal runat="server" ID="litTabs"></asp:Literal>
</div>
<div class="aboutText">
    <asp:Panel runat="server" ID="pnlOverview" Visible="false">
        <table>
            <tr>
                <td>
                    <h3>
                        Introduction</h3>
                    <p>
                        Profiles Research Networking Software (UAMS Profiles RNS) is a networking tool designed to help researchers at UAMS more easily connect with each other through common interests, projects, and specialties. Profiles goes beyond a traditional directory to not only show traditional directory information, but it also illustrates how each person is connected to others in the broad research community.
                    </p>
                    <p>
                        As you navigate through the website, you will see three types of pages:
                    </p>
                    <p>
                        <asp:Image runat="server" ID="imgProfilesIcon"></asp:Image>
                        <u>Profile Pages</u>
                        <div style="padding-left: 15px">
                            Each person has a Profile Page that includes biographical information such as name, titles, affiliations, and contact information. Faculty can edit their own profiles, adding publications, awards, narrative, and a photo. 
                        </div>
                        <br />
                        <div style="padding-left: 15px">
                            Included on each person's Profile Page is a list of their Networks. Networks are formed automatically when researchers share common traits such as being in the same department, working in the same building, co-authoring the same paper, or researching the same concepts or topics. A preview of a person's passive networks is shown on the right side of his or her profile.   
                        </div>
                    </p>
                    <br />
                    <p>
                        <asp:Image runat="server" ID="imgNetworkIcon" />
                        <u>Network Pages</u><br />
                        <div style="padding-left: 15px">
                            Network Pages show all the people in a particular Network. Networks are not restricted to just people, networks can be comprised of other information from the database as well. A "concept" network is a list of all the topics a person has written about. 
                        </div>
                        <br />
                         <div style="padding-left: 15px">
                            Profiles includes several different ways to view networks, including (from left to right) Concept Clouds, which highlight a person's areas of research; Map Views, which show where a person's co-authors are located; Publication Timelines, which graph the number of publications of different types by year; Radial Network Views, which illustrate clusters of connectivity among related people; and Concept Timelines, which depict how a person's research focus has changed over time.
                        </div>
                        <p>
                        <div align="center">
                            <asp:Image runat="server" ID="imgVis" />
                        </div>
                    </p>
                    </p>
                    <p>
                        <asp:Image runat="server" ID="imgConnectionIcon" />
                        <u>Connection Pages</u><br />
                        <div style="padding-left: 15px">
                            Certain Network Pages will include a "Why?" link. These will take you to a Connection Page, which shows why two people or profiles in that network are connected. For example, the Why link in a co-authorship network lists the publications that two people wrote together. The Connection Pages also reveal why certain people appear higher on search results and why particular concepts are highlighted on a person's profile.
                        </div>
                    </p>
                                        
                    <h3>
                        Sharing Data</h3>
                    <p>
                        Profiles is a Semantic Web application, which means its content
                        can be read and understood by other computer programs. This enables the data in
                        profiles, such as addresses and publications, to be shared with other institutions
                        and appear on other websites. If you click the "Export RDF" link on the left sidebar
                        of a profile page, you can see what computer programs see when visiting a profile.
                        For technical information about how build a computer program that can export data
                        from Profiles Research Networking Software, view the <a href="?tab=data">Sharing Data</a> page.
                    </p>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel runat="server" ID="pnlFAQ" Visible="false">
        <script>
            /*function toggleElement(id) {
                if (document.getElementById(id).style.display == 'none') {
                    document.getElementById(id).style.display = '';
                }
                else {
                    document.getElementById(id).style.display = 'none';
                }
            }*/
        </script>
        
        <!--
        <div class="panel-group" id="accordion1">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="panel-title">
                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTen">Can I submit my own Bootstrap templates or themes?</a>
                    </div>
                </div>
                <div id="collapseTen" class="panel-collapse collapse">
                    <div class="panel-body">
                        A lot of the content of the site has been submitted by the community. Whether it is a commercial element/template/theme 
                    or a free one, you are encouraged to contribute. All credits are published along with the resources. 
                    </div>
                </div>

                <div class="panel-heading">
                    <div class="panel-title">
                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseEleven">What is the currency used for all transactions?</a>
                    </div>
                </div>
                <div id="collapseEleven" class="panel-collapse collapse">
                    <div class="panel-body">
                        All prices for themes, templates and other items, including each seller's or buyer's account balance are in <strong>USD</strong>
                    </div>
                </div>
            </div>
        </div>
        -->

        <div class="panel-group" id="accordion">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="panel-title">
                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse1">How was my profile created?</a>
                    </div>
                </div>
                <div id="collapse1" class="panel-collapse collapse">
                    <div class="panel-body">
                        All UAMS profiles were created using information from the SAP, PubMed, TRACKS, and UAMS FacFacts (Faculty Facts) faculty database.
                        <!--More information about FactFacts can be found here: <a href="http://medicine.uams.edu/faculty/faculty-databases/facfacts/">http://medicine.uams.edu/faculty/faculty-databases/facfacts/</a>-->
                        <ul>
                            <li>Basic information such as your department, title, and picture is sourced using SAP</li>
                            <li>Publication information is sourced using PubMed</li>
                            <li>Grant information is sourced using TRACKS with FacFacts (faculty facts) as a supplement</li>
                        </ul>
                    </div>
                </div>

                <div class="panel-heading">
                    <div class="panel-title">
                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse2">Who is listed on UAMS Profiles?</a>
                    </div>
                </div>
                <div id="collapse2" class="panel-collapse collapse">
                    <div class="panel-body">
                        All faculty UAMS members and post-doc researchers are listed in Profiles.
                    </div>
                </div>

                <div class="panel-heading">
                    <div class="panel-title">
                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse3">Who has access to UAMS Profiles?</a>
                    </div>
                </div>
                <div id="collapse3" class="panel-collapse collapse">
                    <div class="panel-body">
                        Anyone with an Internet connection can view the information in Profiles, but this access is read-only. Functions such as editing your profile require logging in to both the UAMS network and UAMS Profiles using your UAMS ID and password.
                    </div>
                </div>

                <div class="panel-heading">
                    <div class="panel-title">
                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse4">Do I need to login to UAMS Profiles?</a>
                    </div>
                </div>
                <div id="collapse4" class="panel-collapse collapse">
                    <div class="panel-body">
                        Most Profiles capabilities can be accessed without logging in. Login is only required if you want to edit your profile. As a reminder, though, you will need to be logged in to the UAMS network for access.
                    <ul>
                        <li>Go to <a href="http://tri.uams.edu/profiles">http://tri.uams.edu/profiles</a></li>
                        <li>This will automatically take you to the search screen where you can search for people or terms.</li>
                    </ul>
                        <p>
                            UAMS Profiles has been integrated into the UAMS network, so all you need to login is your UAMS ID and password. <br />
                            To login to Profiles:<br />
                            <ul>
                                <li>Click on the <b>Login to Profiles</b> tab in the navigation bar at the top of the screen</li>
                                <li>Login with your UAMS ID and password</li>
                                <li>Once you login it should automatically direct you back to the main UAMS Profiles search page</li>
                                <li>If you would like to view your personal profile, click the <b>View My Profile</b> tab in the navigation bar at the top of the screen</li>
                                <li>If you would like to edit your personal profile, click the <b>Edit My Profile</b> tab in the navigation bar at the top of the screen. This will take you to the edit page for your profile</li>
                            </ul>
                        </p>
                    </div>
                </div>

                <div class="panel-heading">
                    <div class="panel-title">
                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse5">I have a UAMS ID, why can’t I login to Profiles?</a>
                    </div>
                </div>
                <div id="collapse5" class="panel-collapse collapse">
                    <div class="panel-body">
                        If you do not have a UAMS Profiles account you will not be able to log into Profiles, even if you do have a UAMS ID. Profiles accounts are limited to UAMS faculty and post-docs; other UAMS employees will not be able to login to Profiles. 
                        Anyone can, however, still access most Profiles capabilities without logging in. For further assistance with this, please see 
                        <a href="#collapse20" class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion"><i>Who do I contact for more information or questions?</i></a>
                    </div>
                </div>

                <div class="panel-heading">
                    <div class="panel-title">
                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse6">How do I view my profile?</a>
                    </div>
                </div>
                <div id="collapse6" class="panel-collapse collapse">
                    <div class="panel-body">
                        To view your profile, click the <b>View My Profile</b> tab in the Navigation Menu at the top of the screen.
                    </div>
                </div>

                <div class="panel-heading">
                    <div class="panel-title">
                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse7">Why doesn’t my profile have a picture?</a>
                    </div>
                </div>
                <div id="collapse7" class="panel-collapse collapse">
                    <div class="panel-body">
                        Profiles populates user pictures using SAP. Of the 3,900 active faculty at UAMS, roughly 700 did not have usable photos in SAP. You are welcome to upload your own photo if one was not automatically populated through SAP. 
                        To add your own photo, sign in to Profiles, chose <b>Edit My Profile</b> and upload a picture in the edit picture section.
                    </div>
                </div>

                <div class="panel-heading">
                    <div class="panel-title">
                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse8">When are profiles for new faculty/post-doc researchers added to UAMS Profiles?</a>
                    </div>
                </div>
                <div id="collapse8" class="panel-collapse collapse">
                    <div class="panel-body">
                        Profiles relies on SAP to populate its demographic data. Once a new faculty member/post-doc's appointment has been entered into SAP it will be added to Profiles via its next update. Profiles maintains a weekly refresh standard. 
                    </div>
                </div>

                <div class="panel-heading">
                    <div class="panel-title">
                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse9">How do I edit my profile?</a>
                    </div>
                </div>
                <div id="collapse9" class="panel-collapse collapse">
                    <div class="panel-body">
                        <p>To edit your profile, click the <b>Edit My Profile</b> tab in the Navigation Menu. You might be prompted to login. The Edit Menu page lists all the types of content that can be included on your profile. 
                            They are grouped into categories and listed in the same order as they appear when viewing your profile. Click any content type to view/edit the items.</p>
                        <p>Note: Some types of content are imported automatically from other systems and cannot be edited through Profiles and will appear with a "locked" icon. Biographical data such as affiliation, title, mailing address, 
                            and email address are all locked as they are populated from your Human Resources record and maintained separately in that system.</p>
                    </div>
                </div>

                <div class="panel-heading">
                    <div class="panel-title">
                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse10">How does UAMS Profiles populate publications lists?</a>
                    </div>
                </div>
                <div id="collapse10" class="panel-collapse collapse">
                    <div class="panel-body">
                        Publications are added both automatically from PubMed and manually by faculty themselves. Profiles uses an algorithm that searches PubMed using author attributes to identify articles written by each person in the Profiles database. 
                        Additionally, Profiles users can manually add publications not included in PubMed. 
                    </div>
                </div>

                <div class="panel-heading">
                    <div class="panel-title">
                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse11">Why are there missing or incorrect publications in my profile?</a>
                    </div>
                </div>
                <div id="collapse11" class="panel-collapse collapse">
                    <div class="panel-body">
                       Unfortunately, there is no easy way to match articles in PubMed to the profiles on this website. The algorithm used to find articles from PubMed attempts to minimize the number of publications incorrectly added to a profile; 
                        however, this method results in some missing publications as well as the addition of publications that may not be yours. Faculty with common names or whose articles were written at other institutions are most likely to have incomplete lists or inaccurate publications listed. 
                        We encourage all faculty to login to the website and add any missing publications or remove incorrect ones.
                    </div>
                </div>

                <div class="panel-heading">
                    <div class="panel-title">
                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse12">Can I edit my concepts, co-authors, or list of similar people?</a>
                    </div>
                </div>
                <div id="collapse12" class="panel-collapse collapse">
                    <div class="panel-body">
                        These are derived automatically from the PubMed articles listed with your profile. You cannot edit these directly, but you can improve these lists by keeping your publications up to date. 
                        Please note that it takes up to 24 hours for the system to update your concepts, co-authors, and similar people after you have modified your publications. 
                        Concept rankings and similar people lists are based on algorithms that weigh multiple factors, such as how many publications you have in a subject area compared to the total number of faculty who have published in that area. 
                        Your feedback is essential to helping us refine these algorithms.
                    </div>
                </div>

                <div class="panel-heading">
                    <div class="panel-title">
                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse13">What are the Networks to the right side of my screen?</a>
                    </div>
                </div>
                <div id="collapse13" class="panel-collapse collapse">
                    <div class="panel-body">
                        <p>The lists to the right of your screen are your Networks. These networks are populated automatically by the system and reflect people that share common traits such as research focus, article authorship, departments, etc. 
                            Most networks are populated using a person's publication history.</p>
                        <ul>
                            <li>The Concepts Network is organized into and derived using a series of Medical Subject Headings (MeSH) terms used by the National Library of Medicine (NLM). 
                                Terms that are present within a person's publications will appear under their Concepts Network. If you click the link to each concept, you can learn more about what each term means (the official NLM definition) and 
                                see the history of its prevalence in the medical community. </li>
                            <li>The Similar People Network is derived in much the same way and links people that have the MeSH terms in common.</li>
                            <li>The Co-Authors Network is simply a list of authors each person has worked with on his or her listed publications. </li>
                            <li>Department lists are determined automatically through other records and consist of people in each person's home department at UAMS.</li>
                        </ul>
                    </div>
                </div>

                <div class="panel-heading">
                    <div class="panel-title">
                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse14">What additional features does UAMS Profiles have?</a>
                    </div>
                </div>
                <div id="collapse14" class="panel-collapse collapse">
                    <div class="panel-body">
                        Each profile has different information sections that can be displayed. By default, Profiles will display your basic data, your grant information, and your publications. 
                        Optional information fields allow users to create overview statements, add information about awards and honors, detail past mentorships or teaching activities, etc. To access and enable these optional information fields, 
                        sign in to your account, go to “Edit My Profile,” and choose which information categories you would like to be displayed. By default, if there is no information in these optional categories, they remain hidden. 
                        To enable them, all users need to do is add the desired information in and hit save. This will update the main profile page to display the added information. 
                    </div>
                </div>

                <div class="panel-heading">
                    <div class="panel-title">
                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse15">Can I list my awards and honors?</a>
                    </div>
                </div>
                <div id="collapse15" class="panel-collapse collapse">
                    <div class="panel-body">
                        Yes, Profiles has a place for users to list accomplishments such as awards and honors. These fields are not default fields that automatically populate into user profiles. 
                        To access these fields, sign in to your account, go to “Edit My Profile,” find the appropriate category, click to edit, and add your information. Once you save your edits, this will update the main profile page to display the added information. 
                    </div>
                </div>

                <div class="panel-heading">
                    <div class="panel-title">
                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse16">How often is Profiles updated?</a>
                    </div>
                </div>
                <div id="collapse16" class="panel-collapse collapse">
                    <div class="panel-body">
                        Profiles operates with a weekly refresh standard. 
                    </div>
                </div>

                <div class="panel-heading">
                    <div class="panel-title">
                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse17">What are the system requirements for accessing UAMS Profiles?</a>
                    </div>
                </div>
                <div id="collapse17" class="panel-collapse collapse">
                    <div class="panel-body">
                        The only system requirement for accessing Profiles is an Internet capable computer with a modern web browser. If you are using an older browser, you may experience some errors in functionality.
                    </div>
                </div>

                <div class="panel-heading">
                    <div class="panel-title">
                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse18">Who Created UAMS Profiles?</a>
                    </div>
                </div>
                <div id="collapse18" class="panel-collapse collapse">
                    <div class="panel-body">
                        This service is made possible by the Profiles Research Networking Software, which was developed under the supervision of Griffin M Weber, M.D., Ph.D., with support from Grant Number 1 UL1 RR025758-01 to Harvard Catalyst: 
                        The Harvard Clinical and Translational Science Center from the National Center for Research Resources and support from Harvard University and its affiliated academic healthcare centers.
                    </div>
                </div>

                <div class="panel-heading">
                    <div class="panel-title">
                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse19">Who manages Profiles at UAMS?</a>
                    </div>
                </div>
                <div id="collapse19" class="panel-collapse collapse">
                    <div class="panel-body">
                        Profiles is managed through a collaboration of the Translational Research Institute (TRI) and the Department of Biomedical Informatics. 
                    </div>
                </div>

                <div class="panel-heading">
                    <div class="panel-title">
                        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse20">Who do I contact for more information or questions?</a>
                    </div>
                </div>
                <div id="collapse20" class="panel-collapse collapse">
                    <div class="panel-body">
                        For more information or questions, please contact <a href="mailto:triservices@uams.edu">TRI Services</a>.
                    </div>
                </div>
            </div>
        </div>

        <!--
            <a href="javascript:toggleElement('a1')">
            <h3>How was my profile created?
            </h3>
        </a>
        <div id="a1" style="display: none">
            All profiles were created using information from the UAMS FacFacts (Faculty Facts) faculty database, PubMed, TRACKS, and SAP.
            <!--More information about FactFacts can be found here: <a href="http://medicine.uams.edu/faculty/faculty-databases/facfacts/">http://medicine.uams.edu/faculty/faculty-databases/facfacts/</a>-->
        <!--</div>

        <a href="javascript:toggleElement('a2')">
            <h3>Who is listed on UAMS Profiles RNS?
            </h3>
        </a>
        <div id="a2" style="display: none">
            All faculty members and post-doc researchers are listed in Profiles RNS. Additionally, manual additions of profiles can be performed through the Profiles RNS website, but that power is limited to administrative users.
        </div>

        <a href="javascript:toggleElement('a3')">
            <h3>Who has access to UAMS Profiles RNS?
            </h3>
        </a>
        <div id="a3" style="display: none">
            Currently, Profiles is open access within the UAMS network, but not searchable. Meaning anyone who knows about the webpage can access it, provided they are logged into the UAMS network.  
        </div>

        <a href="javascript:toggleElement('a4')">
            <h3>Do I need to login to UAMS Profiles RNS?
            </h3>
        </a>
        <div id="a4" style="display: none">
            Most Profiles capabilities can be accessed without logging in. Login is only required if you want to edit your profile. As a reminder, though, you will need to be logged into the UAMS network for access. 
            <ul>
                <li>Go to <a href="http://prfportal.uams.edu/profiles">http://prfportal.uams.edu/profiles</a></li>
                <li>This will automatically take you to the search screen where you can search for people or terms.</li>
            </ul>
        </div>

        <a href="javascript:toggleElement('a5')">
            <h3>UAMS Profiles RNS has been integrated into the UAMS network, so all you need to login is your UAMS ID and password. 
            </h3>
        </a>
        <div id="a5" style="display: none">
            To login to Profiles RNS:
                <ul>
                    <!--<li>Go to <a href="http://prfportal.uams.edu/">http://prfportal.uams.edu/</a></li>-->
                    <!--<li>Click on the "Login to Profiles" tab in the navigation bar at the top of the screen</li>
                    <li>Login with your UAMS ID and password</li>
                    <li>Once you login it should automatically direct you back to the main UAMS Profiles RNS search page</li>
                    <li>If you would like to view your personal profile, click the "View My Profile" tab in the navigation bar at the top of the screen</li>
                    <li>If you would like to edit your personal profile, click the “edit My Profile” tab in the navigation bar at the top of the screen. This will take you to the edit page for your profile </li>
                </ul>

            <p>If you do not have a UAMS Profiles RNS account you will not be able to log into Profiles, even if you do have a UAMS ID. For assistance with this, please see <a href="#contact"><i>Who do I contact for more information or questions?</i></a></p>
        </div>

        <a href="javascript:toggleElement('a6')">
            <h3>How do I view my profile?
            </h3>
        </a>
        <div id="a6" style="display: none">
            To view your profile, click the View My Profile tab in the Navigation Menu at the top of the screen.  
        </div>

        <a href="javascript:toggleElement('a7')">
            <h3>When are profiles for new faculty/post-doc researchers added to Profiles RNS? 
            </h3>
        </a>
        <div id="a7" style="display: none">
            Profiles relies on FacFacts to populate its demographic data. Once a new faculty member/post –doc’s appointment has been entered into faculty affairs into FacFacts it will be added to Profiles RNS via its next update. Profiles RNS updates its FacFacts information monthly.  
        </div>

        <a href="javascript:toggleElement('a8')">
            <h3>How do I edit my profile? 
            </h3>
        </a>
        <div id="a8" style="display: none">
            To edit your profile, click the "Edit My Profile" link in the Navigation Menu. You might be prompted to login. The Edit Menu page lists all the types of content that can be included on your profile. They are grouped into categories and listed in the same order as they appear when viewing your profile. Click any content type to view/edit the items or change the privacy settings. 
        <p>
            Note: Some types of content are imported automatically from other systems, and cannot be edited through UAMS Profiles RNS and will appear with a "locked" icon. Biographical data such as affiliation, title, mailing address, and email address are all locked as they are populated from your Human Resources record and maintained separately in that system. 
        </p>
        </div>

        <a href="javascript:toggleElement('a9')">
         <h3>
            Why are there missing or incorrect publications in my profile?
        </h3></a>
        <div id="a9" style="display: none">
           Publications are added both automatically from PubMed and manually by faculty themselves. Unfortunately, there is no easy way to match articles in PubMed to the profiles on this website. The algorithm used to find articles from PubMed attempts to minimize the number of publications incorrectly added to a profile; however, this method results in some missing publications as well as the addition of publications that may not be yours. Faculty with common names or whose articles were written at other institutions are most likely to have incomplete lists or inaccurate publications listed. We encourage all faculty to login to the website and add any missing publications or remove incorrect ones. 
        </div>
        
        <a href="javascript:toggleElement('a10')">
         <h3>
            Can I edit my concepts, co-authors, or list of similar people?
        </h3></a>
        <div id="a10" style="display: none">
            These are derived automatically from the PubMed articles listed with your profile. You cannot edit these directly, but you can improve these lists by keeping your publications up to date. Please note that it takes up to 24 hours for the system to update your concepts, co-authors, and similar people after you have modified your publications. Concept rankings and similar people lists are based on algorithms that weigh multiple factors, such as how many publications you have in a subject area compared to the total number of faculty who have published in that area. Your feedback is essential to helping us refine these algorithms.  
        </div>

        <a href="javascript:toggleElement('a11')">
         <h3>
            What are the Networks to the right side of my screen? 
        </h3></a>
         <div id="a11" style="display: none">
            The lists to the right of your screen are your Networks. These networks are populated automatically by the system and reflect people that share common traits such as research focus, article authorship, departments, etc. Most networks are populated using a person's publication history. The Concepts Network is organized into and derived using a series of Medical Subject Headings (MeSH) terms used by the National Library of Medicine (NLM). Terms that are present within a person's publications will appear under their Concepts Network. If you click the link to each concept, you can learn more about what each term means (the official NLM definition) and see the history of its prevalence in the medical community. The Similar People Network is derived in much the same way and links people that have the MESH terms in common. The Co-Authors Network is simply a list of authors each person has worked with on his or her listed publications. Department lists are determined automatically through other records and consist of people in each person's home department at UAMS.
        </div>

        <a href="javascript:toggleElement('a12')">
         <h3>
            What are the system requirements for accessing UAMS Profiles RNS?
        </h3></a>
         <div id="a12" style="display: none">
            The only thing needed to access UAMS Profiles RNS is an internet capable computer with a modern web browser.  
        </div>

        <a href="javascript:toggleElement('a13')">
         <h3>
           Who Created Profiles Research Networking Software? 
        </h3></a>
        <div id="a13" style="display: none">
            This service is made possible by the Profiles Research Networking Software developed under the supervision of Griffin M Weber, MD, PhD, with support from Grant Number 1 UL1 RR025758-01 to Harvard Catalyst: The Harvard Clinical and Translational Science Center from the National Center for Research Resources and support from Harvard University and its affiliated academic healthcare centers. 
        </div>

        <a href="javascript:toggleElement('a14')">
         <h3 id="contact">
            Who do I contact for more information or questions?
        </h3></a>
        <div id="a14" style="display: none">
            For more information or questions, please contact <a href="mailto:DBMI@UAMS.EDU">DBMI</a>.
        </div>-->
    </asp:Panel>
    <asp:Panel runat="server" ID="pnlData" Visible="false">
        <h3>
            Sharing Data (Export RDF)</h3>
        <p>
            As a Semantic Web application, Profiles Research Networking Software uses the Resource Description
            Framework (RDF) data model. In RDF, every entity (e.g., person, publication, concept)
            is given a unique URI. (A URI is similar to a URL that you would enter into a web
            browser.) Entities are linked together using "triples" that contain three URIs--a
            subject, predicate, and object. For example, the URI of a Person can be connected
            to the URI of a Concept through a predicate URI of hasResearchArea. Profiles Research 
            Networking Software contains millions of URIs and triples. Semantic Web applications use an
            ontology, which describes the classes and properties used to define entities and
            link them together. Profiles Research Networking Software uses the VIVO Ontology, which was
            developed as part of an NIH-funded grant to be a standard for academic and research
            institutions. A growing number of sites around the world are adopting research networking
            platforms that use the VIVO Ontology. Because RDF can link different triple-stores
            that use the same ontology, software developers are able to create tools that span
            multiple institutions and data sources. When RDF data is shared with the public,
            as it is in Profiles Research Networking Software, it is called Linked Open Data (LOD).
        </p>
        <p>
            There are four types of application programming interfaces (APIs) in Profiles Research 
            Networking Software.
        </p>
        <ul>
            <li>RDF crawl. Because Profiles Research Networking Software is a Semantic Web application, every
                profile has both an HTML page and a corresponding RDF document, which contains the
                data for that page in RDF/XML format. Web crawlers can follow the links embedded
                within the RDF/XML to access additional content.</li>
            <li>SPARQL endpoint. SPARQL is a programming language that enables arbitrary queries
                against RDF data. This provides the most flexibility in accessing data; however,
                the downsides are the complexity in coding SPARQL queries and performance. In general,
                the XML Search API (see below) is better to use than SPARQL.
            <li>XML Search API. This is a web service that provides support for the most common
                types of queries. It is designed to be easier to use and to offer better performance
                than SPARQL, but at the expense of fewer options. It enables full-text search across
                all entity types, faceting, pagination, and sorting options. The request message
                to the web service is in XML format, but the output is in RDF/XML format. 
            <li>Old XML based web services. This provides backwards compatibility for institutions
                that built applications using the older version of Profiles Research Networking Software. These
                web services do not take advantage of many of the new features of Profiles Research 
                Networking Software. Users are encouraged to switch to one of the new APIs.
        </ul>
        <p>
            For more information about the APIs, please see the <a href="http://profiles.catalyst.harvard.edu/docs/ProfilesRNS_1.0.3_APIGuide.pdf">
                documentation</a> and <a href="http://profiles.catalyst.harvard.edu/docs/ProfilesRNS_1.0.3_API_Examples.zip">
                    example files</a>.
        </p>
    </asp:Panel>
     <asp:Panel runat="server" ID="pnlDev" Visible="false">
        <h3>
           Development
        </h3>
        <p>
           Profiles was first envisioned and created as a CTSA funded project by Harvard Catalyst, Harvard University's Clinical and translational Science Center. Considered ground-breaking by many in the field, Profiles has spread to other universities and colleges across the US who have developed their own form of the tool. These various institutions work together as one larger Profiles family to continue to grow and improve upon the program.
        </p>
         <p>
           UAMS Profiles RNS has been developed and is maintained by UAMS' Translational Research Institute and the Division of Biomedical Informatics. Specific acknowledgements are listed below.
        </p>

         <h3>
           Sponsors:
        </h3>
        <p>
           The adoption and development of Profiles RNS at the University of Arkansas for Medical Sciences (UAMS) is supported by the Translational Research Institute (TRI) funded by the National Institutes of Health (NIH) Clinical and Translational Science Award (CTSA) program.
        </p>

         <h3>
           Acknowledgements:
        </h3>
        <p>
           This service is made possible by the Profiles Research Networking Software developed under the supervision of Griffin M Weber, MD, PhD, with support from Grant Number 1 UL1 RR025758-01 to Harvard Catalyst: The Harvard Clinical and Translational Science Center from the National Center for Research Resources and support from Harvard University and its affiliated academic healthcare centers.
        </p>
        
     </asp:Panel>
</div>
