<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

  <head>
    <title>
      packages/madplay – Freetz
    </title>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!--[if IE]><script type="text/javascript">
      if (/^#__msie303:/.test(window.location.hash))
        window.location.replace(window.location.hash.replace(/^#__msie303:/, '#'));
    </script><![endif]-->
        <link rel="search" href="/search" />
        <link rel="help" href="../TracGuide.html" />
        <link rel="alternate" href="madplay%3Fformat=txt" type="text/x-trac-wiki" title="Reiner Text" />
        <link rel="up" href="../packages.html" title="Übergeordnete Wiki-Seite anzeigen" />
        <link rel="start" href="/wiki" />
        <link rel="stylesheet" href="../../chrome/common/css/trac.css" type="text/css" /><link rel="stylesheet" href="../../chrome/common/css/wiki.css" type="text/css" /><link rel="stylesheet" href="../../chrome/wikiextras/css/phrases.css" type="text/css" /><link rel="stylesheet" href="../../chrome/wikiextras/css/boxes.css" type="text/css" /><link rel="stylesheet" href="../../chrome/wikiextras/css/boxes-300.css" type="text/css" /><link rel="stylesheet" href="../../chrome/wikiextras/css/boxes-narrow-toc.css" type="text/css" /><link rel="stylesheet" href="../../wikicss.css" type="text/css" /><link rel="stylesheet" href="../../chrome/tags/css/tractags.css" type="text/css" /><link rel="stylesheet" href="../../chrome/wikinegotiator/css/langmenu-ctxnav.css" type="text/css" />
        <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
        <link rel="icon" href="/favicon.ico" type="image/x-icon" />
      <link type="application/opensearchdescription+xml" rel="search" href="/search/opensearch" title="Freetz durchsuchen" />
      <script type="text/javascript" charset="utf-8" src="../../chrome/common/js/jquery.js"></script>
      <script type="text/javascript" charset="utf-8" src="../../chrome/common/js/babel.js"></script>
      <script type="text/javascript" charset="utf-8" src="../../chrome/common/js/messages/de.js"></script>
      <script type="text/javascript" charset="utf-8" src="../../chrome/common/js/trac.js"></script>
      <script type="text/javascript" charset="utf-8" src="../../chrome/common/js/search.js"></script>
      <script type="text/javascript" charset="utf-8" src="../../chrome/common/js/folding.js"></script>
    <script type="text/javascript">
      jQuery(document).ready(function($) {
        $("#content").find("h1,h2,h3,h4,h5,h6").addAnchor(_("Link to this section"));
        $("#content").find(".wikianchor").each(function() {
          $(this).addAnchor(babel.format(_("Link to #%(id)s"), {id: $(this).attr('id')}));
        });
        $(".foldable").enableFolding(true, true);
      });
    </script>
  </head>
  <body>
    <div id="banner">
      <div id="header">
        <a id="logo" href="/wiki"><img src="../../chrome/common/freetz_motd.png" alt="Freetz" /></a>
      </div>
      <form id="search" action="https://www.google.com/search" method="get" onsubmit="; this.elements.namedItem('q').value = this.elements.namedItem('oq').value + ' site:freetz.github.io'">
        <div>
          <label for="proj-search">Suche:</label>
          <input type="text" id="proj-search" name="oq" size="18" value="" />
          <input type="hidden" name="q" value="" />
          <input type="submit" value="Suche" />
        </div>
      </form>
      <div id="metanav" class="nav">
    <ul>
      <li class="first"><li class="last"><a href="../Impressum.html">Impressum</a></li>
    </ul>
  </div>
    </div>
    <div id="mainnav" class="nav">
    <ul>
      <li class="first active"><a href="/wiki">Wiki</a></li><li><a href="https://github.com/Freetz-NG/freetz-ng/commits/master">Quellen durchsehen</a></li><li class="last"><a href="/screenshots">Bildschirmfotos</a></li>
    </ul>
  </div>
    <div id="langmenu"><ul><li class="first"><span title="Select a language of wiki content">Language:</span></li><li class=" active"><a class="" href="madplay.html" title="displaying language (default)">German</a></li><li class=" last"><a class=" notexist" href="/wiki/packages/madplay.en" title="(not available)">English</a></li></ul></div><p /><div id="main">
      <div id="pagepath" class="noprint">
  <a class="pathentry first" title="Zeige WikiStart an" href="/wiki">Wiki:</a><a class="pathentry" href="../packages.html" title="Zeige packages an">packages</a><span class="pathentry sep">/</span><a class="pathentry" href="madplay.html" title="Zeige packages/madplay an">madplay</a>
</div>
    <div id="content" class="wiki">
      <div class="wikipage searchable">

          <div id="wikipage" class="trac-content"><h1 id="madplay">madplay</h1>
<p>
<strong><a class="ext-link" href="http://www.underbit.com/products/mad/"><span class="icon">​</span>MAD</a></strong> ist ein qualitativ hochwertiger <a class="ext-link" href="http://de.wikipedia.org/wiki/MPEG"><span class="icon">​</span>MPEG</a> Audio Decoder. MPEG rein - <a class="ext-link" href="http://de.wikipedia.org/wiki/Puls-Code-Modulation"><span class="icon">​</span>PCM</a> raus, und zwar in 24-Bit. Da <em>MAD</em> bei sämtlichen Berechnungen auf Gleitkomma-Zahlen verzichtet, eignet es sich besonders für "Embedded Systems" sowie "schwachbrüstige Systeme".
</p>
<p>
<em>Freetz</em> verwendet <em>MAD' z.B. im Paket <a class="wiki" href="dtmfbox.html">DTMFBox</a>.
</em></p>
<h2 id="WeiterführendeLinks">Weiterführende Links</h2>
<ul><li><a class="ext-link" href="http://www.underbit.com/products/mad/"><span class="icon">​</span>MAD Homepage</a>
</li><li><a class="ext-link" href="http://sourceforge.net/projects/mad/"><span class="icon">​</span>MAD Projektseite</a> (Sourceforge)
</li></ul><hr />
</div>

      </div><ul class="tags"><li class="header">Tags</li><li><a href="/tags/audio" rel="tag">audio</a> </li><li><a href="../packages.html" rel="tag">packages</a> </li></ul>

    </div>
    </div>
  </body>
</html>