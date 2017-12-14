<%@ Page Title="" Language="VB" MasterPageFile="~/USER_CSSHTML/UserMaster.Master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <link rel="stylesheet" href="lib/codemirror.css">
    <script src="/Scripts/lib/codemirror.js"></script>
    <script src="/Scripts/lib/xml.js"></script>
    <script src="/Scripts/lib/javascript.js"></script>
    <script src="/Scripts/lib/css.js"></script>
    <script src="/Scripts/lib/closetag.js"></script>
    <script src="/Scripts/jscompiler/custom.js"></script>

    <style type="text/css">
        .CodeMirror {
            height: auto;
        }
    </style>
    <div class="panel-primary header">
        <div class="panel-heading">
            <h3 class="panel-title">
                <button id="runButton" type="button" class="btn btn-default" onclick="submitTryit()">Run</button>
            </h3>
        </div>
    </div>

    <div id="mainContent" class="mainContent">
     <div id="mainContentHolder">
      <div id="draggable"></div>
      <div class="main-left">
        <div class="left-inner-content">
          <div class="left-inner-main">
              <textarea id=editor name=editor>

    <p>Canvas pane goes here:</p>
    <canvas id=pane width=300 height=200></canvas>
    <script>
      var canvas = document.getElementById('pane');
      var context = canvas.getContext('2d');

      context.fillStyle = 'rgb(250,0,0)';
      context.fillRect(10, 10, 55, 50);

      context.fillStyle = 'rgba(0, 0, 250, 0.5)';
      context.fillRect(30, 30, 55, 50);
    </script></textarea>
                    </div>
        </div>
      </div>
      <div class="main-right">
        <div class="right-inner-content">
          <div class="right-inner-main">
            <div id="iframewrapper"></div>
          </div>
        </div>
      </div>
    </div>
   </div>
    <script>
        // Initialize CodeMirror editor with a nice html5 canvas demo.
        var editor = CodeMirror.fromTextArea(document.getElementById('editor'), {
            mode: 'text/html',
            autoCloseTags: true
        });
        submitTryit();
    </script>
</asp:Content>

