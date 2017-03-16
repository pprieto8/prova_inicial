





<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">



  <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/frameworks-d514f0f4cce26123a0bd5717d033adc4138d2033750224d5716f9e939d3b3aa6.css" integrity="sha256-1RTw9MziYSOgvVcX0DOtxBONIDN1AiTVcW+ek507OqY=" media="all" rel="stylesheet" />
  <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github-efb85baef6e21d2cda60d33c4523edb11c7fad97c29bd4ded80b8b5412bd77a6.css" integrity="sha256-77hbrvbiHSzaYNM8RSPtsRx/rZfCm9Te2AuLVBK9d6Y=" media="all" rel="stylesheet" />
  
  
  <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/site-b29e324b8fafaead965049ef224818ef0dccc7384b5cfcad56a56a89c33a9438.css" integrity="sha256-sp4yS4+vrq2WUEnvIkgY7w3MxzhLXPytVqVqicM6lDg=" media="all" rel="stylesheet" />
  

  <meta name="viewport" content="width=device-width">
  
  <title>docker/build.md at master · docker/docker · GitHub</title>
  <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
  <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
  <meta property="fb:app_id" content="1401488693436528">

    
    <meta content="https://avatars0.githubusercontent.com/u/5429470?v=3&amp;s=400" property="og:image" /><meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="docker/docker" property="og:title" /><meta content="https://github.com/docker/docker" property="og:url" /><meta content="docker - Docker - the open-source application container engine" property="og:description" />

  <link rel="assets" href="https://assets-cdn.github.com/">
  
  <meta name="pjax-timeout" content="1000">
  
  <meta name="request-id" content="89D4:23AFD:29A3CB0:4271928:58CA7E8E" data-pjax-transient>
  

  <meta name="selected-link" value="repo_source" data-pjax-transient>

  <meta name="google-site-verification" content="KT5gs8h0wvaagLKAVWq8bbeNwnZZK1r1XQysX3xurLU">
<meta name="google-site-verification" content="ZzhVyEFwb7w3e0-uOTltm8Jsck2F5StVihD0exw2fsA">
    <meta name="google-analytics" content="UA-3769691-2">

<meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" /><meta content="https://collector.githubapp.com/github-external/browser_event" name="octolytics-event-url" /><meta content="89D4:23AFD:29A3CB0:4271928:58CA7E8E" name="octolytics-dimension-request_id" />
<meta content="/&lt;user-name&gt;/&lt;repo-name&gt;/blob/show" data-pjax-transient="true" name="analytics-location" />




  <meta class="js-ga-set" name="dimension1" content="Logged Out">


  
  
      <meta name="hostname" content="github.com">
  <meta name="user-login" content="">

      <meta name="expected-hostname" content="github.com">
    <meta name="js-proxy-site-detection-payload" content="NWZlZjdhY2FlNzljYjVmZDg1ZGE4Mjc5MTA5MzJkZmNhNTdiYzE2MGE2ZWVmNDE1MmI5M2QxNDY5OGE1YWU3Ynx7InJlbW90ZV9hZGRyZXNzIjoiMi4xMzYuNDQuMjExIiwicmVxdWVzdF9pZCI6Ijg5RDQ6MjNBRkQ6MjlBM0NCMDo0MjcxOTI4OjU4Q0E3RThFIiwidGltZXN0YW1wIjoxNDg5NjY1Njc4LCJob3N0IjoiZ2l0aHViLmNvbSJ9">


  <meta name="html-safe-nonce" content="2819422e15429a242b17a58f12724730db7c6c16">

  <meta http-equiv="x-pjax-version" content="1a3401a3ceaf57f4c7e14987c8a04358">
  

    
  <meta name="description" content="docker - Docker - the open-source application container engine">
  <meta name="go-import" content="github.com/docker/docker git https://github.com/docker/docker.git">

  <meta content="5429470" name="octolytics-dimension-user_id" /><meta content="docker" name="octolytics-dimension-user_login" /><meta content="7691631" name="octolytics-dimension-repository_id" /><meta content="docker/docker" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="7691631" name="octolytics-dimension-repository_network_root_id" /><meta content="docker/docker" name="octolytics-dimension-repository_network_root_nwo" />
      <link href="https://github.com/docker/docker/commits/master.atom" rel="alternate" title="Recent Commits to docker:master" type="application/atom+xml">


    <link rel="canonical" href="https://github.com/docker/docker/blob/master/docs/reference/commandline/build.md" data-pjax-transient>


  <meta name="browser-stats-url" content="https://api.github.com/_private/browser/stats">

  <meta name="browser-errors-url" content="https://api.github.com/_private/browser/errors">

  <link rel="mask-icon" href="https://assets-cdn.github.com/pinned-octocat.svg" color="#000000">
  <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">

<meta name="theme-color" content="#1e2327">



  </head>

  <body class="logged-out env-production page-blob">
    

  <div class="position-relative js-header-wrapper ">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div id="js-pjax-loader-bar" class="pjax-loader-bar"><div class="progress"></div></div>

    
    
    



          <header class="site-header js-details-container Details" role="banner">
  <div class="container-responsive">
    <a class="header-logo-invertocat" href="https://github.com/" aria-label="Homepage" data-ga-click="(Logged out) Header, go to homepage, icon:logo-wordmark">
      <svg aria-hidden="true" class="octicon octicon-mark-github" height="32" version="1.1" viewBox="0 0 16 16" width="32"><path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"/></svg>
    </a>

    <button class="btn-link float-right site-header-toggle js-details-target" type="button" aria-label="Toggle navigation">
      <svg aria-hidden="true" class="octicon octicon-three-bars" height="24" version="1.1" viewBox="0 0 12 16" width="18"><path fill-rule="evenodd" d="M11.41 9H.59C0 9 0 8.59 0 8c0-.59 0-1 .59-1H11.4c.59 0 .59.41.59 1 0 .59 0 1-.59 1h.01zm0-4H.59C0 5 0 4.59 0 4c0-.59 0-1 .59-1H11.4c.59 0 .59.41.59 1 0 .59 0 1-.59 1h.01zM.59 11H11.4c.59 0 .59.41.59 1 0 .59 0 1-.59 1H.59C0 13 0 12.59 0 12c0-.59 0-1 .59-1z"/></svg>
    </button>

    <div class="site-header-menu">
      <nav class="site-header-nav">
        <a href="/features" class="js-selected-navigation-item nav-item" data-ga-click="Header, click, Nav menu - item:features" data-selected-links="/features /features">
          Features
</a>        <a href="/explore" class="js-selected-navigation-item nav-item" data-ga-click="Header, click, Nav menu - item:explore" data-selected-links="/explore /trending /trending/developers /integrations /integrations/feature/code /integrations/feature/collaborate /integrations/feature/ship /showcases /explore">
          Explore
</a>        <a href="/pricing" class="js-selected-navigation-item nav-item" data-ga-click="Header, click, Nav menu - item:pricing" data-selected-links="/pricing /pricing">
          Pricing
</a>      </nav>

      <div class="site-header-actions">
          <div class="header-search scoped-search site-scoped-search js-site-search" role="search">
  <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/docker/docker/search" class="js-site-search-form" data-scoped-search-url="/docker/docker/search" data-unscoped-search-url="/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
    <label class="form-control header-search-wrapper js-chromeless-input-container">
      <div class="header-search-scope">This repository</div>
      <input type="text"
        class="form-control header-search-input js-site-search-focus js-site-search-field is-clearable"
        data-hotkey="s"
        name="q"
        placeholder="Search"
        aria-label="Search this repository"
        data-unscoped-placeholder="Search GitHub"
        data-scoped-placeholder="Search"
        autocapitalize="off">
    </label>
</form></div>


          <a class="text-bold site-header-link" href="/login?return_to=%2Fdocker%2Fdocker%2Fblob%2Fmaster%2Fdocs%2Freference%2Fcommandline%2Fbuild.md" data-ga-click="(Logged out) Header, clicked Sign in, text:sign-in">Sign in</a>
            <span class="text-gray">or</span>
            <a class="text-bold site-header-link" href="/join?source=header-repo" data-ga-click="(Logged out) Header, clicked Sign up, text:sign-up">Sign up</a>
      </div>
    </div>
  </div>
</header>


  </div>

  <div id="start-of-content" class="accessibility-aid"></div>

    <div id="js-flash-container">
</div>



  <div role="main">
      <div itemscope itemtype="http://schema.org/SoftwareSourceCode">
    <div id="js-repo-pjax-container" data-pjax-container>
        



<div class="pagehead repohead instapaper_ignore readability-menu experiment-repo-nav">
  <div class="container repohead-details-container">


    <ul class="pagehead-actions">
  <li>
      <a href="/login?return_to=%2Fdocker%2Fdocker"
    class="btn btn-sm btn-with-count tooltipped tooltipped-n"
    aria-label="You must be signed in to watch a repository" rel="nofollow">
    <svg aria-hidden="true" class="octicon octicon-eye" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M8.06 2C3 2 0 8 0 8s3 6 8.06 6C13 14 16 8 16 8s-3-6-7.94-6zM8 12c-2.2 0-4-1.78-4-4 0-2.2 1.8-4 4-4 2.22 0 4 1.8 4 4 0 2.22-1.78 4-4 4zm2-4c0 1.11-.89 2-2 2-1.11 0-2-.89-2-2 0-1.11.89-2 2-2 1.11 0 2 .89 2 2z"/></svg>
    Watch
  </a>
  <a class="social-count" href="/docker/docker/watchers"
     aria-label="3150 users are watching this repository">
    3,150
  </a>

  </li>

  <li>
      <a href="/login?return_to=%2Fdocker%2Fdocker"
    class="btn btn-sm btn-with-count tooltipped tooltipped-n"
    aria-label="You must be signed in to star a repository" rel="nofollow">
    <svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"/></svg>
    Star
  </a>

    <a class="social-count js-social-count" href="/docker/docker/stargazers"
      aria-label="40696 users starred this repository">
      40,696
    </a>

  </li>

  <li>
      <a href="/login?return_to=%2Fdocker%2Fdocker"
        class="btn btn-sm btn-with-count tooltipped tooltipped-n"
        aria-label="You must be signed in to fork a repository" rel="nofollow">
        <svg aria-hidden="true" class="octicon octicon-repo-forked" height="16" version="1.1" viewBox="0 0 10 16" width="10"><path fill-rule="evenodd" d="M8 1a1.993 1.993 0 0 0-1 3.72V6L5 8 3 6V4.72A1.993 1.993 0 0 0 2 1a1.993 1.993 0 0 0-1 3.72V6.5l3 3v1.78A1.993 1.993 0 0 0 5 15a1.993 1.993 0 0 0 1-3.72V9.5l3-3V4.72A1.993 1.993 0 0 0 8 1zM2 4.2C1.34 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm3 10c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm3-10c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"/></svg>
        Fork
      </a>

    <a href="/docker/docker/network" class="social-count"
       aria-label="12267 users forked this repository">
      12,267
    </a>
  </li>
</ul>

    <h1 class="public ">
  <svg aria-hidden="true" class="octicon octicon-repo" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M4 9H3V8h1v1zm0-3H3v1h1V6zm0-2H3v1h1V4zm0-2H3v1h1V2zm8-1v12c0 .55-.45 1-1 1H6v2l-1.5-1.5L3 16v-2H1c-.55 0-1-.45-1-1V1c0-.55.45-1 1-1h10c.55 0 1 .45 1 1zm-1 10H1v2h2v-1h3v1h5v-2zm0-10H2v9h9V1z"/></svg>
  <span class="author" itemprop="author"><a href="/docker" class="url fn" rel="author">docker</a></span><!--
--><span class="path-divider">/</span><!--
--><strong itemprop="name"><a href="/docker/docker" data-pjax="#js-repo-pjax-container">docker</a></strong>

</h1>

  </div>
  <div class="container">
    
<nav class="reponav js-repo-nav js-sidenav-container-pjax"
     itemscope
     itemtype="http://schema.org/BreadcrumbList"
     role="navigation"
     data-pjax="#js-repo-pjax-container">

  <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
    <a href="/docker/docker" class="js-selected-navigation-item selected reponav-item" data-hotkey="g c" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /docker/docker" itemprop="url">
      <svg aria-hidden="true" class="octicon octicon-code" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M9.5 3L8 4.5 11.5 8 8 11.5 9.5 13 14 8 9.5 3zm-5 0L0 8l4.5 5L6 11.5 2.5 8 6 4.5 4.5 3z"/></svg>
      <span itemprop="name">Code</span>
      <meta itemprop="position" content="1">
</a>  </span>

    <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
      <a href="/docker/docker/issues" class="js-selected-navigation-item reponav-item" data-hotkey="g i" data-selected-links="repo_issues repo_labels repo_milestones /docker/docker/issues" itemprop="url">
        <svg aria-hidden="true" class="octicon octicon-issue-opened" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M7 2.3c3.14 0 5.7 2.56 5.7 5.7s-2.56 5.7-5.7 5.7A5.71 5.71 0 0 1 1.3 8c0-3.14 2.56-5.7 5.7-5.7zM7 1C3.14 1 0 4.14 0 8s3.14 7 7 7 7-3.14 7-7-3.14-7-7-7zm1 3H6v5h2V4zm0 6H6v2h2v-2z"/></svg>
        <span itemprop="name">Issues</span>
        <span class="counter">2,292</span>
        <meta itemprop="position" content="2">
</a>    </span>

  <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
    <a href="/docker/docker/pulls" class="js-selected-navigation-item reponav-item" data-hotkey="g p" data-selected-links="repo_pulls /docker/docker/pulls" itemprop="url">
      <svg aria-hidden="true" class="octicon octicon-git-pull-request" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M11 11.28V5c-.03-.78-.34-1.47-.94-2.06C9.46 2.35 8.78 2.03 8 2H7V0L4 3l3 3V4h1c.27.02.48.11.69.31.21.2.3.42.31.69v6.28A1.993 1.993 0 0 0 10 15a1.993 1.993 0 0 0 1-3.72zm-1 2.92c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zM4 3c0-1.11-.89-2-2-2a1.993 1.993 0 0 0-1 3.72v6.56A1.993 1.993 0 0 0 2 15a1.993 1.993 0 0 0 1-3.72V4.72c.59-.34 1-.98 1-1.72zm-.8 10c0 .66-.55 1.2-1.2 1.2-.65 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2zM2 4.2C1.34 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"/></svg>
      <span itemprop="name">Pull requests</span>
      <span class="counter">144</span>
      <meta itemprop="position" content="3">
</a>  </span>

  <a href="/docker/docker/projects" class="js-selected-navigation-item reponav-item" data-selected-links="repo_projects new_repo_project repo_project /docker/docker/projects">
    <svg aria-hidden="true" class="octicon octicon-project" height="16" version="1.1" viewBox="0 0 15 16" width="15"><path fill-rule="evenodd" d="M10 12h3V2h-3v10zm-4-2h3V2H6v8zm-4 4h3V2H2v12zm-1 1h13V1H1v14zM14 0H1a1 1 0 0 0-1 1v14a1 1 0 0 0 1 1h13a1 1 0 0 0 1-1V1a1 1 0 0 0-1-1z"/></svg>
    Projects
    <span class="counter">3</span>
</a>
    <a href="/docker/docker/wiki" class="js-selected-navigation-item reponav-item" data-hotkey="g w" data-selected-links="repo_wiki /docker/docker/wiki">
      <svg aria-hidden="true" class="octicon octicon-book" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M3 5h4v1H3V5zm0 3h4V7H3v1zm0 2h4V9H3v1zm11-5h-4v1h4V5zm0 2h-4v1h4V7zm0 2h-4v1h4V9zm2-6v9c0 .55-.45 1-1 1H9.5l-1 1-1-1H2c-.55 0-1-.45-1-1V3c0-.55.45-1 1-1h5.5l1 1 1-1H15c.55 0 1 .45 1 1zm-8 .5L7.5 3H2v9h6V3.5zm7-.5H9.5l-.5.5V12h6V3z"/></svg>
      Wiki
</a>

  <a href="/docker/docker/pulse" class="js-selected-navigation-item reponav-item" data-selected-links="pulse /docker/docker/pulse">
    <svg aria-hidden="true" class="octicon octicon-pulse" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M11.5 8L8.8 5.4 6.6 8.5 5.5 1.6 2.38 8H0v2h3.6l.9-1.8.9 5.4L9 8.5l1.6 1.5H14V8z"/></svg>
    Pulse
</a>
  <a href="/docker/docker/graphs" class="js-selected-navigation-item reponav-item" data-selected-links="repo_graphs repo_contributors /docker/docker/graphs">
    <svg aria-hidden="true" class="octicon octicon-graph" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M16 14v1H0V0h1v14h15zM5 13H3V8h2v5zm4 0H7V3h2v10zm4 0h-2V6h2v7z"/></svg>
    Graphs
</a>

</nav>

  </div>
</div>

<div class="container new-discussion-timeline experiment-repo-nav">
  <div class="repository-content">

    

<a href="/docker/docker/blob/52143aee95f9464c73bf1bc31f9d8274e5922cd4/docs/reference/commandline/build.md" class="d-none js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:efdaf49d10896be946277c1de0489c76 -->

<div class="file-navigation js-zeroclipboard-container">
  
<div class="select-menu branch-select-menu js-menu-container js-select-menu float-left">
  <button class="btn btn-sm select-menu-button js-menu-target css-truncate" data-hotkey="w"
    
    type="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
    <i>Branch:</i>
    <span class="js-select-button css-truncate-target">master</span>
  </button>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <svg aria-label="Close" class="octicon octicon-x js-menu-close" height="16" role="img" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"/></svg>
        <span class="select-menu-title">Switch branches/tags</span>
      </div>

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="form-control js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" data-filter-placeholder="Filter branches/tags" class="js-select-menu-tab" role="tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" data-filter-placeholder="Find a tag…" class="js-select-menu-tab" role="tab">Tags</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches" role="menu">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/docker/docker/blob/1.12.x/docs/reference/commandline/build.md"
               data-name="1.12.x"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                1.12.x
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/docker/docker/blob/1.13.x/docs/reference/commandline/build.md"
               data-name="1.13.x"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                1.13.x
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/docker/docker/blob/17.03.x/docs/reference/commandline/build.md"
               data-name="17.03.x"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                17.03.x
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/docker/docker/blob/17.04.x/docs/reference/commandline/build.md"
               data-name="17.04.x"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                17.04.x
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/docker/docker/blob/docs/docs/reference/commandline/build.md"
               data-name="docs"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                docs
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open selected"
               href="/docker/docker/blob/master/docs/reference/commandline/build.md"
               data-name="master"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                master
              </span>
            </a>
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/xdocs-v1.10-28-mar-2016/docs/reference/commandline/build.md"
              data-name="xdocs-v1.10-28-mar-2016"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="xdocs-v1.10-28-mar-2016">
                xdocs-v1.10-28-mar-2016
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/xdocs-v1.10-09-05-2016/docs/reference/commandline/build.md"
              data-name="xdocs-v1.10-09-05-2016"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="xdocs-v1.10-09-05-2016">
                xdocs-v1.10-09-05-2016
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v17.03.0-ce/docs/reference/commandline/build.md"
              data-name="v17.03.0-ce"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v17.03.0-ce">
                v17.03.0-ce
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v17.03.0-ce-rc1/docs/reference/commandline/build.md"
              data-name="v17.03.0-ce-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v17.03.0-ce-rc1">
                v17.03.0-ce-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.13.1/docs/reference/commandline/build.md"
              data-name="v1.13.1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.13.1">
                v1.13.1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.13.1-rc2/docs/reference/commandline/build.md"
              data-name="v1.13.1-rc2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.13.1-rc2">
                v1.13.1-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.13.1-rc1/docs/reference/commandline/build.md"
              data-name="v1.13.1-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.13.1-rc1">
                v1.13.1-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.13.0/docs/reference/commandline/build.md"
              data-name="v1.13.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.13.0">
                v1.13.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.13.0-rc7/docs/reference/commandline/build.md"
              data-name="v1.13.0-rc7"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.13.0-rc7">
                v1.13.0-rc7
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.13.0-rc6/docs/reference/commandline/build.md"
              data-name="v1.13.0-rc6"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.13.0-rc6">
                v1.13.0-rc6
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.13.0-rc5/docs/reference/commandline/build.md"
              data-name="v1.13.0-rc5"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.13.0-rc5">
                v1.13.0-rc5
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.13.0-rc4/docs/reference/commandline/build.md"
              data-name="v1.13.0-rc4"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.13.0-rc4">
                v1.13.0-rc4
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.13.0-rc3/docs/reference/commandline/build.md"
              data-name="v1.13.0-rc3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.13.0-rc3">
                v1.13.0-rc3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.13.0-rc2/docs/reference/commandline/build.md"
              data-name="v1.13.0-rc2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.13.0-rc2">
                v1.13.0-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.13.0-rc1/docs/reference/commandline/build.md"
              data-name="v1.13.0-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.13.0-rc1">
                v1.13.0-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.6/docs/reference/commandline/build.md"
              data-name="v1.12.6"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.6">
                v1.12.6
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.5/docs/reference/commandline/build.md"
              data-name="v1.12.5"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.5">
                v1.12.5
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.5-rc1/docs/reference/commandline/build.md"
              data-name="v1.12.5-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.5-rc1">
                v1.12.5-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.4/docs/reference/commandline/build.md"
              data-name="v1.12.4"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.4">
                v1.12.4
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.4-rc1/docs/reference/commandline/build.md"
              data-name="v1.12.4-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.4-rc1">
                v1.12.4-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.3/docs/reference/commandline/build.md"
              data-name="v1.12.3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.3">
                v1.12.3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.3-rc1/docs/reference/commandline/build.md"
              data-name="v1.12.3-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.3-rc1">
                v1.12.3-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.2/docs/reference/commandline/build.md"
              data-name="v1.12.2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.2">
                v1.12.2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.2-rc3/docs/reference/commandline/build.md"
              data-name="v1.12.2-rc3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.2-rc3">
                v1.12.2-rc3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.2-rc2/docs/reference/commandline/build.md"
              data-name="v1.12.2-rc2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.2-rc2">
                v1.12.2-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.2-rc1/docs/reference/commandline/build.md"
              data-name="v1.12.2-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.2-rc1">
                v1.12.2-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.1/docs/reference/commandline/build.md"
              data-name="v1.12.1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.1">
                v1.12.1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.1-rc2/docs/reference/commandline/build.md"
              data-name="v1.12.1-rc2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.1-rc2">
                v1.12.1-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.1-rc1/docs/reference/commandline/build.md"
              data-name="v1.12.1-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.1-rc1">
                v1.12.1-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.0/docs/reference/commandline/build.md"
              data-name="v1.12.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.0">
                v1.12.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.0-rc5/docs/reference/commandline/build.md"
              data-name="v1.12.0-rc5"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.0-rc5">
                v1.12.0-rc5
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.0-rc4/docs/reference/commandline/build.md"
              data-name="v1.12.0-rc4"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.0-rc4">
                v1.12.0-rc4
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.0-rc3/docs/reference/commandline/build.md"
              data-name="v1.12.0-rc3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.0-rc3">
                v1.12.0-rc3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.0-rc2/docs/reference/commandline/build.md"
              data-name="v1.12.0-rc2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.0-rc2">
                v1.12.0-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.0-rc1/docs/reference/commandline/build.md"
              data-name="v1.12.0-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.0-rc1">
                v1.12.0-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.11.2/docs/reference/commandline/build.md"
              data-name="v1.11.2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.11.2">
                v1.11.2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.11.2-rc1/docs/reference/commandline/build.md"
              data-name="v1.11.2-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.11.2-rc1">
                v1.11.2-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.11.1/docs/reference/commandline/build.md"
              data-name="v1.11.1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.11.1">
                v1.11.1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.11.1-rc1/docs/reference/commandline/build.md"
              data-name="v1.11.1-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.11.1-rc1">
                v1.11.1-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.11.0/docs/reference/commandline/build.md"
              data-name="v1.11.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.11.0">
                v1.11.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.11.0-rc5/docs/reference/commandline/build.md"
              data-name="v1.11.0-rc5"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.11.0-rc5">
                v1.11.0-rc5
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.11.0-rc4/docs/reference/commandline/build.md"
              data-name="v1.11.0-rc4"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.11.0-rc4">
                v1.11.0-rc4
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.11.0-rc3/docs/reference/commandline/build.md"
              data-name="v1.11.0-rc3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.11.0-rc3">
                v1.11.0-rc3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.11.0-rc2/docs/reference/commandline/build.md"
              data-name="v1.11.0-rc2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.11.0-rc2">
                v1.11.0-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.11.0-rc1/docs/reference/commandline/build.md"
              data-name="v1.11.0-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.11.0-rc1">
                v1.11.0-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.10.3/docs/reference/commandline/build.md"
              data-name="v1.10.3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.10.3">
                v1.10.3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.10.3-rc2/docs/reference/commandline/build.md"
              data-name="v1.10.3-rc2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.10.3-rc2">
                v1.10.3-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.10.3-rc1/docs/reference/commandline/build.md"
              data-name="v1.10.3-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.10.3-rc1">
                v1.10.3-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.10.2/docs/reference/commandline/build.md"
              data-name="v1.10.2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.10.2">
                v1.10.2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.10.2-rc1/docs/reference/commandline/build.md"
              data-name="v1.10.2-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.10.2-rc1">
                v1.10.2-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.10.1/docs/reference/commandline/build.md"
              data-name="v1.10.1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.10.1">
                v1.10.1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.10.1-rc1/docs/reference/commandline/build.md"
              data-name="v1.10.1-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.10.1-rc1">
                v1.10.1-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.10.0/docs/reference/commandline/build.md"
              data-name="v1.10.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.10.0">
                v1.10.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.10.0-rc4/docs/reference/commandline/build.md"
              data-name="v1.10.0-rc4"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.10.0-rc4">
                v1.10.0-rc4
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.10.0-rc3/docs/reference/commandline/build.md"
              data-name="v1.10.0-rc3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.10.0-rc3">
                v1.10.0-rc3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.10.0-rc2/docs/reference/commandline/build.md"
              data-name="v1.10.0-rc2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.10.0-rc2">
                v1.10.0-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.10.0-rc1/docs/reference/commandline/build.md"
              data-name="v1.10.0-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.10.0-rc1">
                v1.10.0-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.9.1/docs/reference/commandline/build.md"
              data-name="v1.9.1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.9.1">
                v1.9.1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.9.1-rc1/docs/reference/commandline/build.md"
              data-name="v1.9.1-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.9.1-rc1">
                v1.9.1-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.9.0/docs/reference/commandline/build.md"
              data-name="v1.9.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.9.0">
                v1.9.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.9.0-rc5/docs/reference/commandline/build.md"
              data-name="v1.9.0-rc5"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.9.0-rc5">
                v1.9.0-rc5
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.9.0-rc4/docs/reference/commandline/build.md"
              data-name="v1.9.0-rc4"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.9.0-rc4">
                v1.9.0-rc4
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.9.0-rc3/docs/reference/commandline/build.md"
              data-name="v1.9.0-rc3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.9.0-rc3">
                v1.9.0-rc3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.9.0-rc2/docs/reference/commandline/build.md"
              data-name="v1.9.0-rc2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.9.0-rc2">
                v1.9.0-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.9.0-rc1/docs/reference/commandline/build.md"
              data-name="v1.9.0-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.9.0-rc1">
                v1.9.0-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.8.3/docs/reference/commandline/build.md"
              data-name="v1.8.3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.8.3">
                v1.8.3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.8.2/docs/reference/commandline/build.md"
              data-name="v1.8.2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.8.2">
                v1.8.2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.8.2-rc1/docs/reference/commandline/build.md"
              data-name="v1.8.2-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.8.2-rc1">
                v1.8.2-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.8.1/docs/reference/commandline/build.md"
              data-name="v1.8.1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.8.1">
                v1.8.1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.8.0/docs/reference/commandline/build.md"
              data-name="v1.8.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.8.0">
                v1.8.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.8.0-rc3/docs/reference/commandline/build.md"
              data-name="v1.8.0-rc3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.8.0-rc3">
                v1.8.0-rc3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.8.0-rc2/docs/reference/commandline/build.md"
              data-name="v1.8.0-rc2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.8.0-rc2">
                v1.8.0-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.8.0-rc1/docs/reference/commandline/build.md"
              data-name="v1.8.0-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.8.0-rc1">
                v1.8.0-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.7.1/docs/reference/commandline/build.md"
              data-name="v1.7.1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.7.1">
                v1.7.1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.7.1-rc3/docs/reference/commandline/build.md"
              data-name="v1.7.1-rc3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.7.1-rc3">
                v1.7.1-rc3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.7.1-rc2/docs/reference/commandline/build.md"
              data-name="v1.7.1-rc2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.7.1-rc2">
                v1.7.1-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.7.1-rc1/docs/reference/commandline/build.md"
              data-name="v1.7.1-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.7.1-rc1">
                v1.7.1-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.7.0/docs/reference/commandline/build.md"
              data-name="v1.7.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.7.0">
                v1.7.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.7.0-rc5/docs/reference/commandline/build.md"
              data-name="v1.7.0-rc5"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.7.0-rc5">
                v1.7.0-rc5
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.7.0-rc4/docs/reference/commandline/build.md"
              data-name="v1.7.0-rc4"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.7.0-rc4">
                v1.7.0-rc4
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.7.0-rc3/docs/reference/commandline/build.md"
              data-name="v1.7.0-rc3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.7.0-rc3">
                v1.7.0-rc3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.7.0-rc2/docs/reference/commandline/build.md"
              data-name="v1.7.0-rc2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.7.0-rc2">
                v1.7.0-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.7.0-rc1/docs/reference/commandline/build.md"
              data-name="v1.7.0-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.7.0-rc1">
                v1.7.0-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.6.2/docs/reference/commandline/build.md"
              data-name="v1.6.2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.6.2">
                v1.6.2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.6.1/docs/reference/commandline/build.md"
              data-name="v1.6.1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.6.1">
                v1.6.1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.6.0/docs/reference/commandline/build.md"
              data-name="v1.6.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.6.0">
                v1.6.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.6.0-rc7/docs/reference/commandline/build.md"
              data-name="v1.6.0-rc7"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.6.0-rc7">
                v1.6.0-rc7
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.6.0-rc6/docs/reference/commandline/build.md"
              data-name="v1.6.0-rc6"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.6.0-rc6">
                v1.6.0-rc6
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.6.0-rc5/docs/reference/commandline/build.md"
              data-name="v1.6.0-rc5"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.6.0-rc5">
                v1.6.0-rc5
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.6.0-rc4/docs/reference/commandline/build.md"
              data-name="v1.6.0-rc4"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.6.0-rc4">
                v1.6.0-rc4
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.6.0-rc3/docs/reference/commandline/build.md"
              data-name="v1.6.0-rc3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.6.0-rc3">
                v1.6.0-rc3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.6.0-rc2/docs/reference/commandline/build.md"
              data-name="v1.6.0-rc2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.6.0-rc2">
                v1.6.0-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.6.0-rc1/docs/reference/commandline/build.md"
              data-name="v1.6.0-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.6.0-rc1">
                v1.6.0-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.5.0/docs/reference/commandline/build.md"
              data-name="v1.5.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.5.0">
                v1.5.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.5.0-rc4/docs/reference/commandline/build.md"
              data-name="v1.5.0-rc4"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.5.0-rc4">
                v1.5.0-rc4
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.5.0-rc3/docs/reference/commandline/build.md"
              data-name="v1.5.0-rc3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.5.0-rc3">
                v1.5.0-rc3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.5.0-rc2/docs/reference/commandline/build.md"
              data-name="v1.5.0-rc2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.5.0-rc2">
                v1.5.0-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.5.0-rc1/docs/reference/commandline/build.md"
              data-name="v1.5.0-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.5.0-rc1">
                v1.5.0-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.4.1/docs/reference/commandline/build.md"
              data-name="v1.4.1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.4.1">
                v1.4.1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.4.0/docs/reference/commandline/build.md"
              data-name="v1.4.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.4.0">
                v1.4.0
              </span>
            </a>
        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div>

    </div>
  </div>
</div>

  <div class="BtnGroup float-right">
    <a href="/docker/docker/find/master"
          class="js-pjax-capture-input btn btn-sm BtnGroup-item"
          data-pjax
          data-hotkey="t">
      Find file
    </a>
    <button aria-label="Copy file path to clipboard" class="js-zeroclipboard btn btn-sm BtnGroup-item tooltipped tooltipped-s" data-copied-hint="Copied!" type="button">Copy path</button>
  </div>
  <div class="breadcrumb js-zeroclipboard-target">
    <span class="repo-root js-repo-root"><span class="js-path-segment"><a href="/docker/docker"><span>docker</span></a></span></span><span class="separator">/</span><span class="js-path-segment"><a href="/docker/docker/tree/master/docs"><span>docs</span></a></span><span class="separator">/</span><span class="js-path-segment"><a href="/docker/docker/tree/master/docs/reference"><span>reference</span></a></span><span class="separator">/</span><span class="js-path-segment"><a href="/docker/docker/tree/master/docs/reference/commandline"><span>commandline</span></a></span><span class="separator">/</span><strong class="final-path">build.md</strong>
  </div>
</div>


  <div class="commit-tease">
      <span class="float-right">
        <a class="commit-tease-sha" href="/docker/docker/commit/76235635753fd37e8f94ecc01088a12dc550d2e1" data-pjax>
          7623563
        </a>
        <relative-time datetime="2017-02-27T22:05:24Z">Feb 27, 2017</relative-time>
      </span>
      <div>
        <img alt="@pjaffe" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/5993153?v=3&amp;s=40" width="20" />
        <a href="/pjaffe" class="user-mention" rel="contributor">pjaffe</a>
          <a href="/docker/docker/commit/76235635753fd37e8f94ecc01088a12dc550d2e1" class="message" data-pjax="true" title="Remove incorrect duplicate phrase from build.md

A phrase from the &quot;Text files&quot; section in build.md was incorrectly duplicated under the &quot;Tarball contexts&quot; section.

Signed-off-by: Peter Jaffe &lt;pjaffe@nevo.com&gt;">Remove incorrect duplicate phrase from build.md</a>
      </div>

    <div class="commit-tease-contributors">
      <button type="button" class="btn-link muted-link contributors-toggle" data-facebox="#blob_contributors_box">
        <strong>34</strong>
         contributors
      </button>
          <a class="avatar-link tooltipped tooltipped-s" aria-label="yongtang" href="/docker/docker/commits/master/docs/reference/commandline/build.md?author=yongtang"><img alt="@yongtang" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/6932348?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="vdemeester" href="/docker/docker/commits/master/docs/reference/commandline/build.md?author=vdemeester"><img alt="@vdemeester" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/6508?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="mstanleyjones" href="/docker/docker/commits/master/docs/reference/commandline/build.md?author=mstanleyjones"><img alt="@mstanleyjones" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/7674613?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="jhowardmsft" href="/docker/docker/commits/master/docs/reference/commandline/build.md?author=jhowardmsft"><img alt="@jhowardmsft" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/10522484?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="thaJeztah" href="/docker/docker/commits/master/docs/reference/commandline/build.md?author=thaJeztah"><img alt="@thaJeztah" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/1804568?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="WeiZhang555" href="/docker/docker/commits/master/docs/reference/commandline/build.md?author=WeiZhang555"><img alt="@WeiZhang555" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/1203611?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="zhangjianfnst" href="/docker/docker/commits/master/docs/reference/commandline/build.md?author=zhangjianfnst"><img alt="@zhangjianfnst" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/14323974?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="HackToday" href="/docker/docker/commits/master/docs/reference/commandline/build.md?author=HackToday"><img alt="@HackToday" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/10363809?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="yuexiao-wang" href="/docker/docker/commits/master/docs/reference/commandline/build.md?author=yuexiao-wang"><img alt="@yuexiao-wang" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/20082558?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="liliVicky" href="/docker/docker/commits/master/docs/reference/commandline/build.md?author=liliVicky"><img alt="@liliVicky" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/20653950?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="tonistiigi" href="/docker/docker/commits/master/docs/reference/commandline/build.md?author=tonistiigi"><img alt="@tonistiigi" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/585223?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="TDAbboud" href="/docker/docker/commits/master/docs/reference/commandline/build.md?author=TDAbboud"><img alt="@TDAbboud" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/5448017?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="ripcurld0" href="/docker/docker/commits/master/docs/reference/commandline/build.md?author=ripcurld0"><img alt="@ripcurld0" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/2453279?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="pjaffe" href="/docker/docker/commits/master/docs/reference/commandline/build.md?author=pjaffe"><img alt="@pjaffe" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/5993153?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="reaperhulk" href="/docker/docker/commits/master/docs/reference/commandline/build.md?author=reaperhulk"><img alt="@reaperhulk" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/161495?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="nshalman" href="/docker/docker/commits/master/docs/reference/commandline/build.md?author=nshalman"><img alt="@nshalman" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/20391?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="NIWA-Hideyuki" href="/docker/docker/commits/master/docs/reference/commandline/build.md?author=NIWA-Hideyuki"><img alt="@NIWA-Hideyuki" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/13925874?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="mountkin" href="/docker/docker/commits/master/docs/reference/commandline/build.md?author=mountkin"><img alt="@mountkin" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/1496652?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="mapuri" href="/docker/docker/commits/master/docs/reference/commandline/build.md?author=mapuri"><img alt="@mapuri" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/9538438?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="lucafavatella" href="/docker/docker/commits/master/docs/reference/commandline/build.md?author=lucafavatella"><img alt="@lucafavatella" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/1344255?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="coolljt0725" href="/docker/docker/commits/master/docs/reference/commandline/build.md?author=coolljt0725"><img alt="@coolljt0725" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/8232360?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="isubuz" href="/docker/docker/commits/master/docs/reference/commandline/build.md?author=isubuz"><img alt="@isubuz" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/264642?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="hqhq" href="/docker/docker/commits/master/docs/reference/commandline/build.md?author=hqhq"><img alt="@hqhq" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/6415670?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="albers" href="/docker/docker/commits/master/docs/reference/commandline/build.md?author=albers"><img alt="@albers" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/2901725?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="gdevillele" href="/docker/docker/commits/master/docs/reference/commandline/build.md?author=gdevillele"><img alt="@gdevillele" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/939999?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="friism" href="/docker/docker/commits/master/docs/reference/commandline/build.md?author=friism"><img alt="@friism" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/126104?v=3&amp;s=40" width="20" /> </a>

    <button type="button" data-facebox="#blob_contributors_box" class="btn-link others-text">and others</button>

    </div>

    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header" data-facebox-id="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list" data-facebox-id="facebox-description">
          <li class="facebox-user-list-item">
            <img alt="@yongtang" height="24" src="https://avatars0.githubusercontent.com/u/6932348?v=3&amp;s=48" width="24" />
            <a href="/yongtang">yongtang</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@vdemeester" height="24" src="https://avatars0.githubusercontent.com/u/6508?v=3&amp;s=48" width="24" />
            <a href="/vdemeester">vdemeester</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@mstanleyjones" height="24" src="https://avatars3.githubusercontent.com/u/7674613?v=3&amp;s=48" width="24" />
            <a href="/mstanleyjones">mstanleyjones</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@jhowardmsft" height="24" src="https://avatars2.githubusercontent.com/u/10522484?v=3&amp;s=48" width="24" />
            <a href="/jhowardmsft">jhowardmsft</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@thaJeztah" height="24" src="https://avatars2.githubusercontent.com/u/1804568?v=3&amp;s=48" width="24" />
            <a href="/thaJeztah">thaJeztah</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@WeiZhang555" height="24" src="https://avatars1.githubusercontent.com/u/1203611?v=3&amp;s=48" width="24" />
            <a href="/WeiZhang555">WeiZhang555</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@zhangjianfnst" height="24" src="https://avatars2.githubusercontent.com/u/14323974?v=3&amp;s=48" width="24" />
            <a href="/zhangjianfnst">zhangjianfnst</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@HackToday" height="24" src="https://avatars2.githubusercontent.com/u/10363809?v=3&amp;s=48" width="24" />
            <a href="/HackToday">HackToday</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@yuexiao-wang" height="24" src="https://avatars0.githubusercontent.com/u/20082558?v=3&amp;s=48" width="24" />
            <a href="/yuexiao-wang">yuexiao-wang</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@liliVicky" height="24" src="https://avatars1.githubusercontent.com/u/20653950?v=3&amp;s=48" width="24" />
            <a href="/liliVicky">liliVicky</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@tonistiigi" height="24" src="https://avatars1.githubusercontent.com/u/585223?v=3&amp;s=48" width="24" />
            <a href="/tonistiigi">tonistiigi</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@TDAbboud" height="24" src="https://avatars3.githubusercontent.com/u/5448017?v=3&amp;s=48" width="24" />
            <a href="/TDAbboud">TDAbboud</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@ripcurld0" height="24" src="https://avatars0.githubusercontent.com/u/2453279?v=3&amp;s=48" width="24" />
            <a href="/ripcurld0">ripcurld0</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@pjaffe" height="24" src="https://avatars0.githubusercontent.com/u/5993153?v=3&amp;s=48" width="24" />
            <a href="/pjaffe">pjaffe</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@reaperhulk" height="24" src="https://avatars3.githubusercontent.com/u/161495?v=3&amp;s=48" width="24" />
            <a href="/reaperhulk">reaperhulk</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@nshalman" height="24" src="https://avatars2.githubusercontent.com/u/20391?v=3&amp;s=48" width="24" />
            <a href="/nshalman">nshalman</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@NIWA-Hideyuki" height="24" src="https://avatars3.githubusercontent.com/u/13925874?v=3&amp;s=48" width="24" />
            <a href="/NIWA-Hideyuki">NIWA-Hideyuki</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@mountkin" height="24" src="https://avatars1.githubusercontent.com/u/1496652?v=3&amp;s=48" width="24" />
            <a href="/mountkin">mountkin</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@mapuri" height="24" src="https://avatars0.githubusercontent.com/u/9538438?v=3&amp;s=48" width="24" />
            <a href="/mapuri">mapuri</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@lucafavatella" height="24" src="https://avatars1.githubusercontent.com/u/1344255?v=3&amp;s=48" width="24" />
            <a href="/lucafavatella">lucafavatella</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@coolljt0725" height="24" src="https://avatars0.githubusercontent.com/u/8232360?v=3&amp;s=48" width="24" />
            <a href="/coolljt0725">coolljt0725</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@isubuz" height="24" src="https://avatars0.githubusercontent.com/u/264642?v=3&amp;s=48" width="24" />
            <a href="/isubuz">isubuz</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@hqhq" height="24" src="https://avatars0.githubusercontent.com/u/6415670?v=3&amp;s=48" width="24" />
            <a href="/hqhq">hqhq</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@albers" height="24" src="https://avatars2.githubusercontent.com/u/2901725?v=3&amp;s=48" width="24" />
            <a href="/albers">albers</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@gdevillele" height="24" src="https://avatars0.githubusercontent.com/u/939999?v=3&amp;s=48" width="24" />
            <a href="/gdevillele">gdevillele</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@friism" height="24" src="https://avatars3.githubusercontent.com/u/126104?v=3&amp;s=48" width="24" />
            <a href="/friism">friism</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@duglin" height="24" src="https://avatars3.githubusercontent.com/u/1944671?v=3&amp;s=48" width="24" />
            <a href="/duglin">duglin</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@michael-k" height="24" src="https://avatars0.githubusercontent.com/u/152008?v=3&amp;s=48" width="24" />
            <a href="/michael-k">michael-k</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@cpuguy83" height="24" src="https://avatars3.githubusercontent.com/u/799078?v=3&amp;s=48" width="24" />
            <a href="/cpuguy83">cpuguy83</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@sandyskies" height="24" src="https://avatars3.githubusercontent.com/u/960434?v=3&amp;s=48" width="24" />
            <a href="/sandyskies">sandyskies</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@runcom" height="24" src="https://avatars3.githubusercontent.com/u/849915?v=3&amp;s=48" width="24" />
            <a href="/runcom">runcom</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@allencloud" height="24" src="https://avatars3.githubusercontent.com/u/9465626?v=3&amp;s=48" width="24" />
            <a href="/allencloud">allencloud</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@aaronlehmann" height="24" src="https://avatars2.githubusercontent.com/u/10601430?v=3&amp;s=48" width="24" />
            <a href="/aaronlehmann">aaronlehmann</a>
          </li>
      </ul>
    </div>
  </div>


<div class="file">
  <div class="file-header">
  <div class="file-actions">

    <div class="BtnGroup">
      <a href="/docker/docker/raw/master/docs/reference/commandline/build.md" class="btn btn-sm BtnGroup-item" id="raw-url">Raw</a>
        <a href="/docker/docker/blame/master/docs/reference/commandline/build.md" class="btn btn-sm js-update-url-with-hash BtnGroup-item" data-hotkey="b">Blame</a>
      <a href="/docker/docker/commits/master/docs/reference/commandline/build.md" class="btn btn-sm BtnGroup-item" rel="nofollow">History</a>
    </div>


        <button type="button" class="btn-octicon disabled tooltipped tooltipped-nw"
          aria-label="You must be signed in to make or propose changes">
          <svg aria-hidden="true" class="octicon octicon-pencil" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M0 12v3h3l8-8-3-3-8 8zm3 2H1v-2h1v1h1v1zm10.3-9.3L12 6 9 3l1.3-1.3a.996.996 0 0 1 1.41 0l1.59 1.59c.39.39.39 1.02 0 1.41z"/></svg>
        </button>
        <button type="button" class="btn-octicon btn-octicon-danger disabled tooltipped tooltipped-nw"
          aria-label="You must be signed in to make or propose changes">
          <svg aria-hidden="true" class="octicon octicon-trashcan" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M11 2H9c0-.55-.45-1-1-1H5c-.55 0-1 .45-1 1H2c-.55 0-1 .45-1 1v1c0 .55.45 1 1 1v9c0 .55.45 1 1 1h7c.55 0 1-.45 1-1V5c.55 0 1-.45 1-1V3c0-.55-.45-1-1-1zm-1 12H3V5h1v8h1V5h1v8h1V5h1v8h1V5h1v9zm1-10H2V3h9v1z"/></svg>
        </button>
  </div>

  <div class="file-info">
      460 lines (363 sloc)
      <span class="file-info-divider"></span>
    18.9 KB
  </div>
</div>

  
  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text"><table data-table-type="yaml-metadata">
  <thead>
  <tr>
  <th>title</th>

  <th>description</th>

  <th>keywords</th>
  </tr>
  </thead>
  <tbody>
  <tr>
  <td><div>build</div></td>

  <td><div>The build command description and usage</div></td>

  <td><div>build, docker, image</div></td>
  </tr>
  </tbody>
</table>


<h1><a id="user-content-build" class="anchor" href="#build" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>build</h1>
<div class="highlight highlight-source-gfm"><pre>Usage:  docker build [OPTIONS] PATH | URL | -

Build an image from a Dockerfile

Options:
      --add-host value          Add a custom host-to-IP mapping (host:ip) (default [])
      --build-arg value         Set build-time variables (default [])
      --cache-from value        Images to consider as cache sources (default [])
      --cgroup-parent string    Optional parent cgroup for the container
      --compress                Compress the build context using gzip
      --cpu-period int          Limit the CPU CFS (Completely Fair Scheduler) period
      --cpu-quota int           Limit the CPU CFS (Completely Fair Scheduler) quota
  -c, --cpu-shares int          CPU shares (relative weight)
      --cpuset-cpus string      CPUs in which to allow execution (0-3, 0,1)
      --cpuset-mems string      MEMs in which to allow execution (0-3, 0,1)
      --disable-content-trust   Skip image verification (default true)
  -f, --file string             Name of the Dockerfile (Default is 'PATH/Dockerfile')
      --force-rm                Always remove intermediate containers
      --help                    Print usage
      --isolation string        Container isolation technology
      --label value             Set metadata for an image (default [])
  -m, --memory string           Memory limit
      --memory-swap string      Swap limit equal to memory plus swap: '-1' to enable unlimited swap
      --network string          Set the networking mode for the RUN instructions during build
                                'bridge': use default Docker bridge
                                'none': no networking
                                'container:&lt;name|id&gt;': reuse another container's network stack
                                'host': use the Docker host network stack
                                '&lt;network-name&gt;|&lt;network-id&gt;': connect to a user-defined network
      --no-cache                Do not use cache when building the image
      --pull                    Always attempt to pull a newer version of the image
  -q, --quiet                   Suppress the build output and print image ID on success
      --rm                      Remove intermediate containers after a successful build (default true)
      --security-opt value      Security Options (default [])
      --shm-size bytes          Size of /dev/shm
                                The format is <span class="pl-c1">`&lt;number&gt;&lt;unit&gt;`</span>. <span class="pl-c1">`number`</span> must be greater than <span class="pl-c1">`0`</span>.
                                Unit is optional and can be <span class="pl-c1">`b`</span> (bytes), <span class="pl-c1">`k`</span> (kilobytes), <span class="pl-c1">`m`</span> (megabytes),
                                or <span class="pl-c1">`g`</span> (gigabytes). If you omit the unit, the system uses bytes.
      --squash                  Squash newly built layers into a single new layer (<span class="pl-mb">**Experimental Only**</span>)
  -t, --tag value               Name and optionally a tag in the 'name:tag' format (default [])
      --ulimit value            Ulimit options (default [])</pre></div>
<h2><a id="user-content-description" class="anchor" href="#description" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Description</h2>
<p>Builds Docker images from a Dockerfile and a "context". A build's context is
the files located in the specified <code>PATH</code> or <code>URL</code>. The build process can refer
to any of the files in the context. For example, your build can use an
<a href="/docker/docker/blob/master/docs/reference/builder.md#add"><em>ADD</em></a> instruction to reference a file in the
context.</p>
<p>The <code>URL</code> parameter can refer to three kinds of resources: Git repositories,
pre-packaged tarball contexts and plain text files.</p>
<h3><a id="user-content-git-repositories" class="anchor" href="#git-repositories" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Git repositories</h3>
<p>When the <code>URL</code> parameter points to the location of a Git repository, the
repository acts as the build context. The system recursively clones the
repository and its submodules using a <code>git clone --depth 1 --recursive</code>
command. This command runs in a temporary directory on your local host. After
the command succeeds, the directory is sent to the Docker daemon as the
context. Local clones give you the ability to access private repositories using
local user credentials, VPN's, and so forth.</p>
<p>Git URLs accept context configuration in their fragment section, separated by a
colon <code>:</code>.  The first part represents the reference that Git will check out,
this can be either a branch, a tag, or a commit SHA. The second part represents
a subdirectory inside the repository that will be used as a build context.</p>
<p>For example, run this command to use a directory called <code>docker</code> in the branch
<code>container</code>:</p>
<div class="highlight highlight-source-shell"><pre>$ docker build https://github.com/docker/rootfs.git#container:docker</pre></div>
<p>The following table represents all the valid suffixes with their build
contexts:</p>
<table>
<thead>
<tr>
<th>Build Syntax Suffix</th>
<th>Commit Used</th>
<th>Build Context Used</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>myrepo.git</code></td>
<td><code>refs/heads/master</code></td>
<td><code>/</code></td>
</tr>
<tr>
<td><code>myrepo.git#mytag</code></td>
<td><code>refs/tags/mytag</code></td>
<td><code>/</code></td>
</tr>
<tr>
<td><code>myrepo.git#mybranch</code></td>
<td><code>refs/heads/mybranch</code></td>
<td><code>/</code></td>
</tr>
<tr>
<td><code>myrepo.git#abcdef</code></td>
<td><code>sha1 = abcdef</code></td>
<td><code>/</code></td>
</tr>
<tr>
<td><code>myrepo.git#:myfolder</code></td>
<td><code>refs/heads/master</code></td>
<td><code>/myfolder</code></td>
</tr>
<tr>
<td><code>myrepo.git#master:myfolder</code></td>
<td><code>refs/heads/master</code></td>
<td><code>/myfolder</code></td>
</tr>
<tr>
<td><code>myrepo.git#mytag:myfolder</code></td>
<td><code>refs/tags/mytag</code></td>
<td><code>/myfolder</code></td>
</tr>
<tr>
<td><code>myrepo.git#mybranch:myfolder</code></td>
<td><code>refs/heads/mybranch</code></td>
<td><code>/myfolder</code></td>
</tr>
<tr>
<td><code>myrepo.git#abcdef:myfolder</code></td>
<td><code>sha1 = abcdef</code></td>
<td><code>/myfolder</code></td>
</tr></tbody></table>
<h3><a id="user-content-tarball-contexts" class="anchor" href="#tarball-contexts" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Tarball contexts</h3>
<p>If you pass an URL to a remote tarball, the URL itself is sent to the daemon:</p>
<div class="highlight highlight-source-shell"><pre>$ docker build http://server/context.tar.gz</pre></div>
<p>The download operation will be performed on the host the Docker daemon is
running on, which is not necessarily the same host from which the build command
is being issued. The Docker daemon will fetch <code>context.tar.gz</code> and use it as the
build context. Tarball contexts must be tar archives conforming to the standard
<code>tar</code> UNIX format and can be compressed with any one of the 'xz', 'bzip2',
'gzip' or 'identity' (no compression) formats.</p>
<h3><a id="user-content-text-files" class="anchor" href="#text-files" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Text files</h3>
<p>Instead of specifying a context, you can pass a single <code>Dockerfile</code> in the
<code>URL</code> or pipe the file in via <code>STDIN</code>. To pipe a <code>Dockerfile</code> from <code>STDIN</code>:</p>
<div class="highlight highlight-source-shell"><pre>$ docker build - <span class="pl-k">&lt;</span> Dockerfile</pre></div>
<p>With Powershell on Windows, you can run:</p>
<div class="highlight highlight-source-powershell"><pre><span class="pl-c1">Get-Content</span> Dockerfile <span class="pl-k">|</span> docker build <span class="pl-k">-</span></pre></div>
<p>If you use <code>STDIN</code> or specify a <code>URL</code> pointing to a plain text file, the system
places the contents into a file called <code>Dockerfile</code>, and any <code>-f</code>, <code>--file</code>
option is ignored. In this scenario, there is no context.</p>
<p>By default the <code>docker build</code> command will look for a <code>Dockerfile</code> at the root
of the build context. The <code>-f</code>, <code>--file</code>, option lets you specify the path to
an alternative file to use instead. This is useful in cases where the same set
of files are used for multiple builds. The path must be to a file within the
build context. If a relative path is specified then it is interpreted as
relative to the root of the context.</p>
<p>In most cases, it's best to put each Dockerfile in an empty directory. Then,
add to that directory only the files needed for building the Dockerfile. To
increase the build's performance, you can exclude files and directories by
adding a <code>.dockerignore</code> file to that directory as well. For information on
creating one, see the <a href="/docker/docker/blob/master/docs/reference/builder.md#dockerignore-file">.dockerignore file</a>.</p>
<p>If the Docker client loses connection to the daemon, the build is canceled.
This happens if you interrupt the Docker client with <code>CTRL-c</code> or if the Docker
client is killed for any reason. If the build initiated a pull which is still
running at the time the build is cancelled, the pull is cancelled as well.</p>
<h2><a id="user-content-return-code" class="anchor" href="#return-code" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Return code</h2>
<p>On a successful build, a return code of success <code>0</code> will be returned.  When the
build fails, a non-zero failure code will be returned.</p>
<p>There should be informational output of the reason for failure output to
<code>STDERR</code>:</p>
<div class="highlight highlight-source-shell"><pre>$ docker build -t fail <span class="pl-c1">.</span>

Sending build context to Docker daemon 2.048 kB
Sending build context to Docker daemon
Step 1/3 <span class="pl-c1">:</span> FROM busybox
 ---<span class="pl-k">&gt;</span> 4986bf8c1536
Step 2/3 <span class="pl-c1">:</span> RUN <span class="pl-c1">exit</span> 13
 ---<span class="pl-k">&gt;</span> Running <span class="pl-k">in</span> e26670ec7a0a
INFO[0000] The <span class="pl-c1">command</span> [/bin/sh <span class="pl-k">-c</span> <span class="pl-c1">exit</span> 13] returned a non-zero code: 13
$ <span class="pl-c1">echo</span> <span class="pl-smi">$?</span>
1</pre></div>
<p>See also:</p>
<p><a href="/docker/docker/blob/master/docs/reference/builder.md"><em>Dockerfile Reference</em></a>.</p>
<h2><a id="user-content-examples" class="anchor" href="#examples" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Examples</h2>
<h3><a id="user-content-build-with-path" class="anchor" href="#build-with-path" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Build with PATH</h3>
<div class="highlight highlight-source-shell"><pre>$ docker build <span class="pl-c1">.</span>

Uploading context 10240 bytes
Step 1/3 <span class="pl-c1">:</span> FROM busybox
Pulling repository busybox
 ---<span class="pl-k">&gt;</span> e9aa60c60128MB/2.284 MB (100%) endpoint: https://cdn-registry-1.docker.io/v1/
Step 2/3 <span class="pl-c1">:</span> RUN ls -lh /
 ---<span class="pl-k">&gt;</span> Running <span class="pl-k">in</span> 9c9e81692ae9
total 24
drwxr-xr-x    2 root     root        4.0K Mar 12  2013 bin
drwxr-xr-x    5 root     root        4.0K Oct 19 00:19 dev
drwxr-xr-x    2 root     root        4.0K Oct 19 00:19 etc
drwxr-xr-x    2 root     root        4.0K Nov 15 23:34 lib
lrwxrwxrwx    1 root     root           3 Mar 12  2013 lib64 -<span class="pl-k">&gt;</span> lib
dr-xr-xr-x  116 root     root           0 Nov 15 23:34 proc
lrwxrwxrwx    1 root     root           3 Mar 12  2013 sbin -<span class="pl-k">&gt;</span> bin
dr-xr-xr-x   13 root     root           0 Nov 15 23:34 sys
drwxr-xr-x    2 root     root        4.0K Mar 12  2013 tmp
drwxr-xr-x    2 root     root        4.0K Nov 15 23:34 usr
 ---<span class="pl-k">&gt;</span> b35f4035db3f
Step 3/3 <span class="pl-c1">:</span> CMD <span class="pl-c1">echo</span> Hello world
 ---<span class="pl-k">&gt;</span> Running <span class="pl-k">in</span> 02071fceb21b
 ---<span class="pl-k">&gt;</span> f52f38b7823e
Successfully built f52f38b7823e
Removing intermediate container 9c9e81692ae9
Removing intermediate container 02071fceb21b</pre></div>
<p>This example specifies that the <code>PATH</code> is <code>.</code>, and so all the files in the
local directory get <code>tar</code>d and sent to the Docker daemon. The <code>PATH</code> specifies
where to find the files for the "context" of the build on the Docker daemon.
Remember that the daemon could be running on a remote machine and that no
parsing of the Dockerfile happens at the client side (where you're running
<code>docker build</code>). That means that <em>all</em> the files at <code>PATH</code> get sent, not just
the ones listed to <a href="/docker/docker/blob/master/docs/reference/builder.md#add"><em>ADD</em></a> in the Dockerfile.</p>
<p>The transfer of context from the local machine to the Docker daemon is what the
<code>docker</code> client means when you see the "Sending build context" message.</p>
<p>If you wish to keep the intermediate containers after the build is complete,
you must use <code>--rm=false</code>. This does not affect the build cache.</p>
<h3><a id="user-content-build-with-url" class="anchor" href="#build-with-url" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Build with URL</h3>
<div class="highlight highlight-source-shell"><pre>$ docker build github.com/creack/docker-firefox</pre></div>
<p>This will clone the GitHub repository and use the cloned repository as context.
The Dockerfile at the root of the repository is used as Dockerfile. You can
specify an arbitrary Git repository by using the <code>git://</code> or <code>git@</code> scheme.</p>
<div class="highlight highlight-source-shell"><pre>$ docker build -f ctx/Dockerfile http://server/ctx.tar.gz

Downloading context: http://server/ctx.tar.gz [<span class="pl-k">===================&gt;</span>]    240 B/240 B
Step 1/3 <span class="pl-c1">:</span> FROM busybox
 ---<span class="pl-k">&gt;</span> 8c2e06607696
Step 2/3 <span class="pl-c1">:</span> ADD ctx/container.cfg /
 ---<span class="pl-k">&gt;</span> e7829950cee3
Removing intermediate container b35224abf821
Step 3/3 <span class="pl-c1">:</span> CMD /bin/ls
 ---<span class="pl-k">&gt;</span> Running <span class="pl-k">in</span> fbc63d321d73
 ---<span class="pl-k">&gt;</span> 3286931702ad
Removing intermediate container fbc63d321d73
Successfully built 377c409b35e4</pre></div>
<p>This sends the URL <code>http://server/ctx.tar.gz</code> to the Docker daemon, which
downloads and extracts the referenced tarball. The <code>-f ctx/Dockerfile</code>
parameter specifies a path inside <code>ctx.tar.gz</code> to the <code>Dockerfile</code> that is used
to build the image. Any <code>ADD</code> commands in that <code>Dockerfile</code> that refers to local
paths must be relative to the root of the contents inside <code>ctx.tar.gz</code>. In the
example above, the tarball contains a directory <code>ctx/</code>, so the <code>ADD ctx/container.cfg /</code> operation works as expected.</p>
<h3><a id="user-content-build-with--" class="anchor" href="#build-with--" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Build with -</h3>
<div class="highlight highlight-source-shell"><pre>$ docker build - <span class="pl-k">&lt;</span> Dockerfile</pre></div>
<p>This will read a Dockerfile from <code>STDIN</code> without context. Due to the lack of a
context, no contents of any local directory will be sent to the Docker daemon.
Since there is no context, a Dockerfile <code>ADD</code> only works if it refers to a
remote URL.</p>
<div class="highlight highlight-source-shell"><pre>$ docker build - <span class="pl-k">&lt;</span> context.tar.gz</pre></div>
<p>This will build an image for a compressed context read from <code>STDIN</code>.  Supported
formats are: bzip2, gzip and xz.</p>
<h3><a id="user-content-use-a-dockerignore-file" class="anchor" href="#use-a-dockerignore-file" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Use a .dockerignore file</h3>
<div class="highlight highlight-source-shell"><pre>$ docker build <span class="pl-c1">.</span>

Uploading context 18.829 MB
Uploading context
Step 1/2 <span class="pl-c1">:</span> FROM busybox
 ---<span class="pl-k">&gt;</span> 769b9341d937
Step 2/2 <span class="pl-c1">:</span> CMD <span class="pl-c1">echo</span> Hello world
 ---<span class="pl-k">&gt;</span> Using cache
 ---<span class="pl-k">&gt;</span> 99cc1ad10469
Successfully built 99cc1ad10469
$ <span class="pl-c1">echo</span> <span class="pl-s"><span class="pl-pds">"</span>.git<span class="pl-pds">"</span></span> <span class="pl-k">&gt;</span> .dockerignore
$ docker build <span class="pl-c1">.</span>
Uploading context  6.76 MB
Uploading context
Step 1/2 <span class="pl-c1">:</span> FROM busybox
 ---<span class="pl-k">&gt;</span> 769b9341d937
Step 2/2 <span class="pl-c1">:</span> CMD <span class="pl-c1">echo</span> Hello world
 ---<span class="pl-k">&gt;</span> Using cache
 ---<span class="pl-k">&gt;</span> 99cc1ad10469
Successfully built 99cc1ad10469</pre></div>
<p>This example shows the use of the <code>.dockerignore</code> file to exclude the <code>.git</code>
directory from the context. Its effect can be seen in the changed size of the
uploaded context. The builder reference contains detailed information on
<a href="/docker/docker/blob/master/docs/reference/builder.md#dockerignore-file">creating a .dockerignore file</a></p>
<h3><a id="user-content-tag-an-image--t" class="anchor" href="#tag-an-image--t" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Tag an image (-t)</h3>
<div class="highlight highlight-source-shell"><pre>$ docker build -t vieux/apache:2.0 <span class="pl-c1">.</span></pre></div>
<p>This will build like the previous example, but it will then tag the resulting
image. The repository name will be <code>vieux/apache</code> and the tag will be <code>2.0</code>.
<a href="/docker/docker/blob/master/docs/reference/commandline/tag.md">Read more about valid tags</a>.</p>
<p>You can apply multiple tags to an image. For example, you can apply the <code>latest</code>
tag to a newly built image and add another tag that references a specific
version.
For example, to tag an image both as <code>whenry/fedora-jboss:latest</code> and
<code>whenry/fedora-jboss:v2.1</code>, use the following:</p>
<div class="highlight highlight-source-shell"><pre>$ docker build -t whenry/fedora-jboss:latest -t whenry/fedora-jboss:v2.1 <span class="pl-c1">.</span></pre></div>
<h3><a id="user-content-specify-a-dockerfile--f" class="anchor" href="#specify-a-dockerfile--f" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Specify a Dockerfile (-f)</h3>
<div class="highlight highlight-source-shell"><pre>$ docker build -f Dockerfile.debug <span class="pl-c1">.</span></pre></div>
<p>This will use a file called <code>Dockerfile.debug</code> for the build instructions
instead of <code>Dockerfile</code>.</p>
<div class="highlight highlight-source-shell"><pre>$ docker build -f dockerfiles/Dockerfile.debug -t myapp_debug <span class="pl-c1">.</span>
$ docker build -f dockerfiles/Dockerfile.prod  -t myapp_prod <span class="pl-c1">.</span></pre></div>
<p>The above commands will build the current build context (as specified by the
<code>.</code>) twice, once using a debug version of a <code>Dockerfile</code> and once using a
production version.</p>
<div class="highlight highlight-source-shell"><pre>$ <span class="pl-c1">cd</span> /home/me/myapp/some/dir/really/deep
$ docker build -f /home/me/myapp/dockerfiles/debug /home/me/myapp
$ docker build -f ../../../../dockerfiles/debug /home/me/myapp</pre></div>
<p>These two <code>docker build</code> commands do the exact same thing. They both use the
contents of the <code>debug</code> file instead of looking for a <code>Dockerfile</code> and will use
<code>/home/me/myapp</code> as the root of the build context. Note that <code>debug</code> is in the
directory structure of the build context, regardless of how you refer to it on
the command line.</p>
<blockquote>
<p><strong>Note:</strong>
<code>docker build</code> will return a <code>no such file or directory</code> error if the
file or directory does not exist in the uploaded context. This may
happen if there is no context, or if you specify a file that is
elsewhere on the Host system. The context is limited to the current
directory (and its children) for security reasons, and to ensure
repeatable builds on remote Docker hosts. This is also the reason why
<code>ADD ../file</code> will not work.</p>
</blockquote>
<h3><a id="user-content-use-a-custom-parent-cgroup---cgroup-parent" class="anchor" href="#use-a-custom-parent-cgroup---cgroup-parent" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Use a custom parent cgroup (--cgroup-parent)</h3>
<p>When <code>docker build</code> is run with the <code>--cgroup-parent</code> option the containers
used in the build will be run with the <a href="/docker/docker/blob/master/docs/reference/run.md#specifying-custom-cgroups">corresponding <code>docker run</code>
flag</a>.</p>
<h3><a id="user-content-set-ulimits-in-container---ulimit" class="anchor" href="#set-ulimits-in-container---ulimit" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Set ulimits in container (--ulimit)</h3>
<p>Using the <code>--ulimit</code> option with <code>docker build</code> will cause each build step's
container to be started using those <a href="/docker/docker/blob/master/docs/reference/commandline/run.md#set-ulimits-in-container-ulimit"><code>--ulimit</code>
flag values</a>.</p>
<h3><a id="user-content-set-build-time-variables---build-arg" class="anchor" href="#set-build-time-variables---build-arg" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Set build-time variables (--build-arg)</h3>
<p>You can use <code>ENV</code> instructions in a Dockerfile to define variable
values. These values persist in the built image. However, often
persistence is not what you want. Users want to specify variables differently
depending on which host they build an image on.</p>
<p>A good example is <code>http_proxy</code> or source versions for pulling intermediate
files. The <code>ARG</code> instruction lets Dockerfile authors define values that users
can set at build-time using the  <code>--build-arg</code> flag:</p>
<div class="highlight highlight-source-shell"><pre>$ docker build --build-arg HTTP_PROXY=http://10.20.30.2:1234 <span class="pl-c1">.</span></pre></div>
<p>This flag allows you to pass the build-time variables that are
accessed like regular environment variables in the <code>RUN</code> instruction of the
Dockerfile. Also, these values don't persist in the intermediate or final images
like <code>ENV</code> values do.</p>
<p>Using this flag will not alter the output you see when the <code>ARG</code> lines from the
Dockerfile are echoed during the build process.</p>
<p>For detailed information on using <code>ARG</code> and <code>ENV</code> instructions, see the
<a href="/docker/docker/blob/master/docs/reference/builder.md">Dockerfile reference</a>.</p>
<h3><a id="user-content-optional-security-options---security-opt" class="anchor" href="#optional-security-options---security-opt" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Optional security options (--security-opt)</h3>
<p>This flag is only supported on a daemon running on Windows, and only supports
the <code>credentialspec</code> option. The <code>credentialspec</code> must be in the format
<code>file://spec.txt</code> or <code>registry://keyname</code>.</p>
<h3><a id="user-content-specify-isolation-technology-for-container---isolation" class="anchor" href="#specify-isolation-technology-for-container---isolation" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Specify isolation technology for container (--isolation)</h3>
<p>This option is useful in situations where you are running Docker containers on
Windows. The <code>--isolation=&lt;value&gt;</code> option sets a container's isolation
technology. On Linux, the only supported is the <code>default</code> option which uses
Linux namespaces. On Microsoft Windows, you can specify these values:</p>
<table>
<thead>
<tr>
<th>Value</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>default</code></td>
<td>Use the value specified by the Docker daemon's <code>--exec-opt</code> . If the <code>daemon</code> does not specify an isolation technology, Microsoft Windows uses <code>process</code> as its default value.</td>
</tr>
<tr>
<td><code>process</code></td>
<td>Namespace isolation only.</td>
</tr>
<tr>
<td><code>hyperv</code></td>
<td>Hyper-V hypervisor partition-based isolation.</td>
</tr></tbody></table>
<p>Specifying the <code>--isolation</code> flag without a value is the same as setting <code>--isolation="default"</code>.</p>
<h3><a id="user-content-add-entries-to-container-hosts-file---add-host" class="anchor" href="#add-entries-to-container-hosts-file---add-host" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Add entries to container hosts file (--add-host)</h3>
<p>You can add other hosts into a container's <code>/etc/hosts</code> file by using one or
more <code>--add-host</code> flags. This example adds a static address for a host named
<code>docker</code>:</p>
<pre><code>$ docker build --add-host=docker:10.180.0.1 .
</code></pre>
<h3><a id="user-content-squash-an-images-layers---squash-experimental-only" class="anchor" href="#squash-an-images-layers---squash-experimental-only" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Squash an image's layers (--squash) <strong>Experimental Only</strong></h3>
<p>Once the image is built, squash the new layers into a new image with a single
new layer. Squashing does not destroy any existing image, rather it creates a new
image with the content of the squashed layers. This effectively makes it look
like all <code>Dockerfile</code> commands were created with a single layer. The build
cache is preserved with this method.</p>
<p><strong>Note</strong>: using this option means the new image will not be able to take
advantage of layer sharing with other images and may use significantly more
space.</p>
<p><strong>Note</strong>: using this option you may see significantly more space used due to
storing two copies of the image, one for the build cache with all the cache
layers in tact, and one for the squashed version.</p>
</article>
  </div>

</div>

<button type="button" data-facebox="#jump-to-line" data-facebox-class="linejump" data-hotkey="l" class="d-none">Jump to Line</button>
<div id="jump-to-line" style="display:none">
  <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="" class="js-jump-to-line-form" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
    <input class="form-control linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" aria-label="Jump to line" autofocus>
    <button type="submit" class="btn">Go</button>
</form></div>

  </div>
  <div class="modal-backdrop js-touch-events"></div>
</div>




    </div>
  </div>

  </div>

      <div class="container site-footer-container">
  <div class="site-footer" role="contentinfo">
    <ul class="site-footer-links float-right">
        <li><a href="https://github.com/contact" data-ga-click="Footer, go to contact, text:contact">Contact GitHub</a></li>
      <li><a href="https://developer.github.com" data-ga-click="Footer, go to api, text:api">API</a></li>
      <li><a href="https://training.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
      <li><a href="https://shop.github.com" data-ga-click="Footer, go to shop, text:shop">Shop</a></li>
        <li><a href="https://github.com/blog" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
        <li><a href="https://github.com/about" data-ga-click="Footer, go to about, text:about">About</a></li>

    </ul>

    <a href="https://github.com" aria-label="Homepage" class="site-footer-mark" title="GitHub">
      <svg aria-hidden="true" class="octicon octicon-mark-github" height="24" version="1.1" viewBox="0 0 16 16" width="24"><path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"/></svg>
</a>
    <ul class="site-footer-links">
      <li>&copy; 2017 <span title="0.15099s from github-fe-caeab30.cp1-iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="https://github.com/site/terms" data-ga-click="Footer, go to terms, text:terms">Terms</a></li>
        <li><a href="https://github.com/site/privacy" data-ga-click="Footer, go to privacy, text:privacy">Privacy</a></li>
        <li><a href="https://github.com/security" data-ga-click="Footer, go to security, text:security">Security</a></li>
        <li><a href="https://status.github.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
        <li><a href="https://help.github.com" data-ga-click="Footer, go to help, text:help">Help</a></li>
    </ul>
  </div>
</div>



  

  <div id="ajax-error-message" class="ajax-error-message flash flash-error">
    <svg aria-hidden="true" class="octicon octicon-alert" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M8.865 1.52c-.18-.31-.51-.5-.87-.5s-.69.19-.87.5L.275 13.5c-.18.31-.18.69 0 1 .19.31.52.5.87.5h13.7c.36 0 .69-.19.86-.5.17-.31.18-.69.01-1L8.865 1.52zM8.995 13h-2v-2h2v2zm0-3h-2V6h2v4z"/></svg>
    <button type="button" class="flash-close js-flash-close js-ajax-error-dismiss" aria-label="Dismiss error">
      <svg aria-hidden="true" class="octicon octicon-x" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"/></svg>
    </button>
    You can't perform that action at this time.
  </div>


    
    <script crossorigin="anonymous" integrity="sha256-v7ct8CdSo6IR2gBoxm/aJ1eP5UIOhVppHHPDkQdCuDE=" src="https://assets-cdn.github.com/assets/frameworks-bfb72df02752a3a211da0068c66fda27578fe5420e855a691c73c3910742b831.js"></script>
    <script async="async" crossorigin="anonymous" integrity="sha256-qB7Jg6diejoIQNDL2B/1Z11ojzckJJ1yQ5xI5uVQKlQ=" src="https://assets-cdn.github.com/assets/github-a81ec983a7627a3a0840d0cbd81ff5675d688f3724249d72439c48e6e5502a54.js"></script>
    
    
    
    
  <div class="js-stale-session-flash stale-session-flash flash flash-warn flash-banner d-none">
    <svg aria-hidden="true" class="octicon octicon-alert" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M8.865 1.52c-.18-.31-.51-.5-.87-.5s-.69.19-.87.5L.275 13.5c-.18.31-.18.69 0 1 .19.31.52.5.87.5h13.7c.36 0 .69-.19.86-.5.17-.31.18-.69.01-1L8.865 1.52zM8.995 13h-2v-2h2v2zm0-3h-2V6h2v4z"/></svg>
    <span class="signed-in-tab-flash">You signed in with another tab or window. <a href="">Reload</a> to refresh your session.</span>
    <span class="signed-out-tab-flash">You signed out in another tab or window. <a href="">Reload</a> to refresh your session.</span>
  </div>
  <div class="facebox" id="facebox" style="display:none;">
  <div class="facebox-popup">
    <div class="facebox-content" role="dialog" aria-labelledby="facebox-header" aria-describedby="facebox-description">
    </div>
    <button type="button" class="facebox-close js-facebox-close" aria-label="Close modal">
      <svg aria-hidden="true" class="octicon octicon-x" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"/></svg>
    </button>
  </div>
</div>


  </body>
</html>

