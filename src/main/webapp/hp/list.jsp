<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%
    String path = request.getContextPath();
    String add_url = "add.jsp";
    String edit_url = "edit.jsp";
    String del_url = "server/del.jsp";
    String del_batch_url = "server/del.jsp";
    String ret_url = "list.jsp";
%>

<!doctype html>
<html>

  <head>
    <title>HP Style</title>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <%@ include file="common/resource.jsp"%>
  </head>

  <%@ include file="common/nav.jsp"%>

  <script type="text/javascript">
    $(document).ready(function(){
      $(".jqzoom").imagezoom({preload:0});
    });
  </script>

  <!-- content start -->
  <div class="content">

    <div class="bread_crumbs">
      HP -> List
    </div>

    <!-- begin of search area -->
    <div class="search_area">
      <form action="<%=path%>/hp/list.jsp"   method="get">
        Name : <input type="text" name="name" placeholder="name"/>
        <input type="submit" value="Search"  class="btn"/>
      </form>
    </div>
    <!-- end of search area -->

    <!-- start of table list -->
    <div class="table_list">
      <table>
        <thead>
          <tr>
            <th width="20px"><input type="checkbox" id="cb_check_all_items" onclick="check_all_items();" /></th>
            <th width="150px">Name</th>
            <th width="100px">Img</th>
            <th width="250px">Operation</th>
          </tr>
        </thead>
        <tbody>
            <tr class="odd">
              <td><input type="checkbox" class="cb_item node_id" value="1" /></td>
              <td>Cook Book</td>
              <td>
                  <div class="box"><div class="tb-pic">
                        <img src="<%=path%>/hp/assert/images/thumbnail_yf.jpg" rel="<%=path%>/hp/assert/images/yf.jpg" class="jqzoom" width="50px" title="yi fei" />
                 </div></div>
              </td>
              <td>
                  <input type="button" value="Edit" onclick="cm.edit('<%=edit_url%>?id=1')" class="btn" />
                  <input type="button" value="Del" onclick="cm.del(1,'<%=del_url%>','<%=ret_url%>')" class="btn" />
              </td>
            </tr>
            
            <tr class="even">
              <td><input type="checkbox" class="cb_item node_id" value="2" /></td>
              <td>Program Book</td>
              <td>
                  <div class="box"><div class="tb-pic">
                        <img src="<%=path%>/hp/assert/images/thumbnail_yf.jpg" rel="<%=path%>/hp/assert/images/yf.jpg" class="jqzoom" width="50px" title="yi fei" />
                 </div></div>
              </td>
              <td>
                  <input type="button" value="Edit" onclick="cm.edit('<%=edit_url%>?id=2')" class="btn" />
                  <input type="button" value="Del" onclick="cm.del(2,'<%=del_url%>','<%=ret_url%>')" class="btn" />
              </td>
            </tr>
        </tbody>
      </table>
    </div>
    <!-- end of table list -->

    <div class='operations'>
        <input type="button" value="Add" onclick="cm.add('<%=add_url%>')" class="btn" />
        <input type="button" value="Del Batch" onclick="cm.del_batch('<%=del_batch_url%>','<%=ret_url%>')" class="btn" />
    </div>

    Pager Html
    
  </div>
  <!-- content end -->

  </div>
  <!-- sector end -->

  <%@ include file="common/footer.jsp"%>