<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>æ æ é¢ææ¡£</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="css/jquery.dataTables.min.css" />
<script type="text/javascript" charset="utf8"
	src="js/jquery.dataTables.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$('#example').DataTable({
			"language": {
	            "lengthMenu": "æ¯é¡µæ¾ç¤º _MENU_ æ¡è®°å½",
	            "zeroRecords": "æªæ¾å°",
	            "search":         "æ¥æ¾:",
	            "info": "ç¬¬ _PAGE_ é¡µ / å± _PAGES_ é¡µ",
	            "infoEmpty": "No records available",
	            "infoFiltered": "(filtered from _MAX_ total records)"
	        },
	        "pagingType": "numbers"
		});
	});
</script>

</head>
<body>
	<div class="place">
		<span>ä½ç½®ï¼</span>
		<ul class="placeul">
			<li><a href="#">é¦é¡µ</a></li>
			<li><a href="#">æ°æ®è¡¨</a></li>
			<li><a href="#">åºæ¬åå®¹</a></li>
		</ul>
	</div>
	<div class="rightinfo">
		<table id="example" class="display" cellspacing="0" width="100%">
			<thead>
				<tr>
					<th>Name</th>
					<th>Position</th>
					<th>Office</th>
					<th>Age</th>
					<th>Start date</th>
					<th>Salary</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Tiger Nixon</td>
					<td>System Architect</td>
					<td>Edinburgh</td>
					<td>61</td>
					<td>2011/04/25</td>
					<td>$320,800</td>
				</tr>
				<tr>
					<td>Garrett Winters</td>
					<td>Accountant</td>
					<td>Tokyo</td>
					<td>63</td>
					<td>2011/07/25</td>
					<td>$170,750</td>
				</tr>
				<tr>
					<td>Ashton Cox</td>
					<td>Junior Technical Author</td>
					<td>San Francisco</td>
					<td>66</td>
					<td>2009/01/12</td>
					<td>$86,000</td>
				</tr>
				<tr>
					<td>Cedric Kelly</td>
					<td>Senior Javascript Developer</td>
					<td>Edinburgh</td>
					<td>22</td>
					<td>2012/03/29</td>
					<td>$433,060</td>
				</tr>
				<tr>
					<td>Airi Satou</td>
					<td>Accountant</td>
					<td>Tokyo</td>
					<td>33</td>
					<td>2008/11/28</td>
					<td>$162,700</td>
				</tr>
				<tr>
					<td>Brielle Williamson</td>
					<td>Integration Specialist</td>
					<td>New York</td>
					<td>61</td>
					<td>2012/12/02</td>
					<td>$372,000</td>
				</tr>
				<tr>
					<td>Herrod Chandler</td>
					<td>Sales Assistant</td>
					<td>San Francisco</td>
					<td>59</td>
					<td>2012/08/06</td>
					<td>$137,500</td>
				</tr>
				<tr>
					<td>Rhona Davidson</td>
					<td>Integration Specialist</td>
					<td>Tokyo</td>
					<td>55</td>
					<td>2010/10/14</td>
					<td>$327,900</td>
				</tr>
				<tr>
					<td>Colleen Hurst</td>
					<td>Javascript Developer</td>
					<td>San Francisco</td>
					<td>39</td>
					<td>2009/09/15</td>
					<td>$205,500</td>
				</tr>
				<tr>
					<td>Sonya Frost</td>
					<td>Software Engineer</td>
					<td>Edinburgh</td>
					<td>23</td>
					<td>2008/12/13</td>
					<td>$103,600</td>
				</tr>
				<tr>
					<td>Jena Gaines</td>
					<td>Office Manager</td>
					<td>London</td>
					<td>30</td>
					<td>2008/12/19</td>
					<td>$90,560</td>
				</tr>
				<tr>
					<td>Quinn Flynn</td>
					<td>Support Lead</td>
					<td>Edinburgh</td>
					<td>22</td>
					<td>2013/03/03</td>
					<td>$342,000</td>
				</tr>
				<tr>
					<td>Charde Marshall</td>
					<td>Regional Director</td>
					<td>San Francisco</td>
					<td>36</td>
					<td>2008/10/16</td>
					<td>$470,600</td>
				</tr>
				<tr>
					<td>Haley Kennedy</td>
					<td>Senior Marketing Designer</td>
					<td>London</td>
					<td>43</td>
					<td>2012/12/18</td>
					<td>$313,500</td>
				</tr>
				<tr>
					<td>Tatyana Fitzpatrick</td>
					<td>Regional Director</td>
					<td>London</td>
					<td>19</td>
					<td>2010/03/17</td>
					<td>$385,750</td>
				</tr>
				<tr>
					<td>Michael Silva</td>
					<td>Marketing Designer</td>
					<td>London</td>
					<td>66</td>
					<td>2012/11/27</td>
					<td>$198,500</td>
				</tr>
				<tr>
					<td>Paul Byrd</td>
					<td>Chief Financial Officer (CFO)</td>
					<td>New York</td>
					<td>64</td>
					<td>2010/06/09</td>
					<td>$725,000</td>
				</tr>
				<tr>
					<td>Gloria Little</td>
					<td>Systems Administrator</td>
					<td>New York</td>
					<td>59</td>
					<td>2009/04/10</td>
					<td>$237,500</td>
				</tr>
				<tr>
					<td>Bradley Greer</td>
					<td>Software Engineer</td>
					<td>London</td>
					<td>41</td>
					<td>2012/10/13</td>
					<td>$132,000</td>
				</tr>
				<tr>
					<td>Dai Rios</td>
					<td>Personnel Lead</td>
					<td>Edinburgh</td>
					<td>35</td>
					<td>2012/09/26</td>
					<td>$217,500</td>
				</tr>
				<tr>
					<td>Jenette Caldwell</td>
					<td>Development Lead</td>
					<td>New York</td>
					<td>30</td>
					<td>2011/09/03</td>
					<td>$345,000</td>
				</tr>
				<tr>
					<td>Suki Burks</td>
					<td>Developer</td>
					<td>London</td>
					<td>53</td>
					<td>2009/10/22</td>
					<td>$114,500</td>
				</tr>
				<tr>
					<td>Prescott Bartlett</td>
					<td>Technical Author</td>
					<td>London</td>
					<td>27</td>
					<td>2011/05/07</td>
					<td>$145,000</td>
				</tr>
				<tr>
					<td>Gavin Cortez</td>
					<td>Team Leader</td>
					<td>San Francisco</td>
					<td>22</td>
					<td>2008/10/26</td>
					<td>$235,500</td>
				</tr>
				<tr>
					<td>Martena Mccray</td>
					<td>Post-Sales support</td>
					<td>Edinburgh</td>
					<td>46</td>
					<td>2011/03/09</td>
					<td>$324,050</td>
				</tr>
				<tr>
					<td>Unity Butler</td>
					<td>Marketing Designer</td>
					<td>San Francisco</td>
					<td>47</td>
					<td>2009/12/09</td>
					<td>$85,675</td>
				</tr>
				<tr>
					<td>Howard Hatfield</td>
					<td>Office Manager</td>
					<td>San Francisco</td>
					<td>51</td>
					<td>2008/12/16</td>
					<td>$164,500</td>
				</tr>
				<tr>
					<td>Hope Fuentes</td>
					<td>Secretary</td>
					<td>San Francisco</td>
					<td>41</td>
					<td>2010/02/12</td>
					<td>$109,850</td>
				</tr>
				<tr>
					<td>Vivian Harrell</td>
					<td>Financial Controller</td>
					<td>San Francisco</td>
					<td>62</td>
					<td>2009/02/14</td>
					<td>$452,500</td>
				</tr>
				<tr>
					<td>Timothy Mooney</td>
					<td>Office Manager</td>
					<td>London</td>
					<td>37</td>
					<td>2008/12/11</td>
					<td>$136,200</td>
				</tr>
				<tr>
					<td>Jackson Bradshaw</td>
					<td>Director</td>
					<td>New York</td>
					<td>65</td>
					<td>2008/09/26</td>
					<td>$645,750</td>
				</tr>
				<tr>
					<td>Olivia Liang</td>
					<td>Support Engineer</td>
					<td>Singapore</td>
					<td>64</td>
					<td>2011/02/03</td>
					<td>$234,500</td>
				</tr>
				<tr>
					<td>Bruno Nash</td>
					<td>Software Engineer</td>
					<td>London</td>
					<td>38</td>
					<td>2011/05/03</td>
					<td>$163,500</td>
				</tr>
				<tr>
					<td>Sakura Yamamoto</td>
					<td>Support Engineer</td>
					<td>Tokyo</td>
					<td>37</td>
					<td>2009/08/19</td>
					<td>$139,575</td>
				</tr>
				<tr>
					<td>Thor Walton</td>
					<td>Developer</td>
					<td>New York</td>
					<td>61</td>
					<td>2013/08/11</td>
					<td>$98,540</td>
				</tr>
				<tr>
					<td>Hermione Butler</td>
					<td>Regional Director</td>
					<td>London</td>
					<td>47</td>
					<td>2011/03/21</td>
					<td>$356,250</td>
				</tr>
				<tr>
					<td>Lael Greer</td>
					<td>Systems Administrator</td>
					<td>London</td>
					<td>21</td>
					<td>2009/02/27</td>
					<td>$103,500</td>
				</tr>
				<tr>
					<td>Jonas Alexander</td>
					<td>Developer</td>
					<td>San Francisco</td>
					<td>30</td>
					<td>2010/07/14</td>
					<td>$86,500</td>
				</tr>
				<tr>
					<td>Shad Decker</td>
					<td>Regional Director</td>
					<td>Edinburgh</td>
					<td>51</td>
					<td>2008/11/13</td>
					<td>$183,000</td>
				</tr>
				<tr>
					<td>Michael Bruce</td>
					<td>Javascript Developer</td>
					<td>Singapore</td>
					<td>29</td>
					<td>2011/06/27</td>
					<td>$183,000</td>
				</tr>
				<tr>
					<td>Donna Snider</td>
					<td>Customer Support</td>
					<td>New York</td>
					<td>27</td>
					<td>2011/01/25</td>
					<td>$112,000</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>
