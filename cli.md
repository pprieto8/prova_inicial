





<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">



  <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/frameworks-d514f0f4cce26123a0bd5717d033adc4138d2033750224d5716f9e939d3b3aa6.css" integrity="sha256-1RTw9MziYSOgvVcX0DOtxBONIDN1AiTVcW+ek507OqY=" media="all" rel="stylesheet" />
  <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github-efb85baef6e21d2cda60d33c4523edb11c7fad97c29bd4ded80b8b5412bd77a6.css" integrity="sha256-77hbrvbiHSzaYNM8RSPtsRx/rZfCm9Te2AuLVBK9d6Y=" media="all" rel="stylesheet" />
  
  
  <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/site-b29e324b8fafaead965049ef224818ef0dccc7384b5cfcad56a56a89c33a9438.css" integrity="sha256-sp4yS4+vrq2WUEnvIkgY7w3MxzhLXPytVqVqicM6lDg=" media="all" rel="stylesheet" />
  

  <meta name="viewport" content="width=device-width">
  
  <title>docker/cli.md at master · docker/docker · GitHub</title>
  <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
  <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
  <meta property="fb:app_id" content="1401488693436528">

    
    <meta content="https://avatars0.githubusercontent.com/u/5429470?v=3&amp;s=400" property="og:image" /><meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="docker/docker" property="og:title" /><meta content="https://github.com/docker/docker" property="og:url" /><meta content="docker - Docker - the open-source application container engine" property="og:description" />

  <link rel="assets" href="https://assets-cdn.github.com/">
  
  <meta name="pjax-timeout" content="1000">
  
  <meta name="request-id" content="89D4:23AFD:29A3FA5:4271C23:58CA7E91" data-pjax-transient>
  

  <meta name="selected-link" value="repo_source" data-pjax-transient>

  <meta name="google-site-verification" content="KT5gs8h0wvaagLKAVWq8bbeNwnZZK1r1XQysX3xurLU">
<meta name="google-site-verification" content="ZzhVyEFwb7w3e0-uOTltm8Jsck2F5StVihD0exw2fsA">
    <meta name="google-analytics" content="UA-3769691-2">

<meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" /><meta content="https://collector.githubapp.com/github-external/browser_event" name="octolytics-event-url" /><meta content="89D4:23AFD:29A3FA5:4271C23:58CA7E91" name="octolytics-dimension-request_id" />
<meta content="/&lt;user-name&gt;/&lt;repo-name&gt;/blob/show" data-pjax-transient="true" name="analytics-location" />




  <meta class="js-ga-set" name="dimension1" content="Logged Out">


  
  
      <meta name="hostname" content="github.com">
  <meta name="user-login" content="">

      <meta name="expected-hostname" content="github.com">
    <meta name="js-proxy-site-detection-payload" content="ZmQ0M2UzZDU4MWU3NTdjZWM1M2I2MzJiNjAzMWY3NjRhZGViZWU1Yzc1YTM5OTdiZGEyMWY5Mjk5ZTZlMjUwM3x7InJlbW90ZV9hZGRyZXNzIjoiMi4xMzYuNDQuMjExIiwicmVxdWVzdF9pZCI6Ijg5RDQ6MjNBRkQ6MjlBM0ZBNTo0MjcxQzIzOjU4Q0E3RTkxIiwidGltZXN0YW1wIjoxNDg5NjY1NjgzLCJob3N0IjoiZ2l0aHViLmNvbSJ9">


  <meta name="html-safe-nonce" content="2819422e15429a242b17a58f12724730db7c6c16">

  <meta http-equiv="x-pjax-version" content="1a3401a3ceaf57f4c7e14987c8a04358">
  

    
  <meta name="description" content="docker - Docker - the open-source application container engine">
  <meta name="go-import" content="github.com/docker/docker git https://github.com/docker/docker.git">

  <meta content="5429470" name="octolytics-dimension-user_id" /><meta content="docker" name="octolytics-dimension-user_login" /><meta content="7691631" name="octolytics-dimension-repository_id" /><meta content="docker/docker" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="7691631" name="octolytics-dimension-repository_network_root_id" /><meta content="docker/docker" name="octolytics-dimension-repository_network_root_nwo" />
      <link href="https://github.com/docker/docker/commits/master.atom" rel="alternate" title="Recent Commits to docker:master" type="application/atom+xml">


    <link rel="canonical" href="https://github.com/docker/docker/blob/master/docs/reference/commandline/cli.md" data-pjax-transient>


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


          <a class="text-bold site-header-link" href="/login?return_to=%2Fdocker%2Fdocker%2Fblob%2Fmaster%2Fdocs%2Freference%2Fcommandline%2Fcli.md" data-ga-click="(Logged out) Header, clicked Sign in, text:sign-in">Sign in</a>
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

    

<a href="/docker/docker/blob/52143aee95f9464c73bf1bc31f9d8274e5922cd4/docs/reference/commandline/cli.md" class="d-none js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:00634417ed116b49f201990144ee8168 -->

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
               href="/docker/docker/blob/1.12.x/docs/reference/commandline/cli.md"
               data-name="1.12.x"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                1.12.x
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/docker/docker/blob/1.13.x/docs/reference/commandline/cli.md"
               data-name="1.13.x"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                1.13.x
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/docker/docker/blob/17.03.x/docs/reference/commandline/cli.md"
               data-name="17.03.x"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                17.03.x
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/docker/docker/blob/17.04.x/docs/reference/commandline/cli.md"
               data-name="17.04.x"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                17.04.x
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/docker/docker/blob/docs/docs/reference/commandline/cli.md"
               data-name="docs"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                docs
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open selected"
               href="/docker/docker/blob/master/docs/reference/commandline/cli.md"
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
              href="/docker/docker/tree/xdocs-v1.10-28-mar-2016/docs/reference/commandline/cli.md"
              data-name="xdocs-v1.10-28-mar-2016"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="xdocs-v1.10-28-mar-2016">
                xdocs-v1.10-28-mar-2016
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/xdocs-v1.10-09-05-2016/docs/reference/commandline/cli.md"
              data-name="xdocs-v1.10-09-05-2016"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="xdocs-v1.10-09-05-2016">
                xdocs-v1.10-09-05-2016
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v17.03.0-ce/docs/reference/commandline/cli.md"
              data-name="v17.03.0-ce"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v17.03.0-ce">
                v17.03.0-ce
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v17.03.0-ce-rc1/docs/reference/commandline/cli.md"
              data-name="v17.03.0-ce-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v17.03.0-ce-rc1">
                v17.03.0-ce-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.13.1/docs/reference/commandline/cli.md"
              data-name="v1.13.1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.13.1">
                v1.13.1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.13.1-rc2/docs/reference/commandline/cli.md"
              data-name="v1.13.1-rc2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.13.1-rc2">
                v1.13.1-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.13.1-rc1/docs/reference/commandline/cli.md"
              data-name="v1.13.1-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.13.1-rc1">
                v1.13.1-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.13.0/docs/reference/commandline/cli.md"
              data-name="v1.13.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.13.0">
                v1.13.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.13.0-rc7/docs/reference/commandline/cli.md"
              data-name="v1.13.0-rc7"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.13.0-rc7">
                v1.13.0-rc7
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.13.0-rc6/docs/reference/commandline/cli.md"
              data-name="v1.13.0-rc6"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.13.0-rc6">
                v1.13.0-rc6
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.13.0-rc5/docs/reference/commandline/cli.md"
              data-name="v1.13.0-rc5"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.13.0-rc5">
                v1.13.0-rc5
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.13.0-rc4/docs/reference/commandline/cli.md"
              data-name="v1.13.0-rc4"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.13.0-rc4">
                v1.13.0-rc4
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.13.0-rc3/docs/reference/commandline/cli.md"
              data-name="v1.13.0-rc3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.13.0-rc3">
                v1.13.0-rc3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.13.0-rc2/docs/reference/commandline/cli.md"
              data-name="v1.13.0-rc2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.13.0-rc2">
                v1.13.0-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.13.0-rc1/docs/reference/commandline/cli.md"
              data-name="v1.13.0-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.13.0-rc1">
                v1.13.0-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.6/docs/reference/commandline/cli.md"
              data-name="v1.12.6"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.6">
                v1.12.6
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.5/docs/reference/commandline/cli.md"
              data-name="v1.12.5"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.5">
                v1.12.5
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.5-rc1/docs/reference/commandline/cli.md"
              data-name="v1.12.5-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.5-rc1">
                v1.12.5-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.4/docs/reference/commandline/cli.md"
              data-name="v1.12.4"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.4">
                v1.12.4
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.4-rc1/docs/reference/commandline/cli.md"
              data-name="v1.12.4-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.4-rc1">
                v1.12.4-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.3/docs/reference/commandline/cli.md"
              data-name="v1.12.3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.3">
                v1.12.3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.3-rc1/docs/reference/commandline/cli.md"
              data-name="v1.12.3-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.3-rc1">
                v1.12.3-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.2/docs/reference/commandline/cli.md"
              data-name="v1.12.2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.2">
                v1.12.2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.2-rc3/docs/reference/commandline/cli.md"
              data-name="v1.12.2-rc3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.2-rc3">
                v1.12.2-rc3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.2-rc2/docs/reference/commandline/cli.md"
              data-name="v1.12.2-rc2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.2-rc2">
                v1.12.2-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.2-rc1/docs/reference/commandline/cli.md"
              data-name="v1.12.2-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.2-rc1">
                v1.12.2-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.1/docs/reference/commandline/cli.md"
              data-name="v1.12.1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.1">
                v1.12.1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.1-rc2/docs/reference/commandline/cli.md"
              data-name="v1.12.1-rc2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.1-rc2">
                v1.12.1-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.1-rc1/docs/reference/commandline/cli.md"
              data-name="v1.12.1-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.1-rc1">
                v1.12.1-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.0/docs/reference/commandline/cli.md"
              data-name="v1.12.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.0">
                v1.12.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.0-rc5/docs/reference/commandline/cli.md"
              data-name="v1.12.0-rc5"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.0-rc5">
                v1.12.0-rc5
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.0-rc4/docs/reference/commandline/cli.md"
              data-name="v1.12.0-rc4"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.0-rc4">
                v1.12.0-rc4
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.0-rc3/docs/reference/commandline/cli.md"
              data-name="v1.12.0-rc3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.0-rc3">
                v1.12.0-rc3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.0-rc2/docs/reference/commandline/cli.md"
              data-name="v1.12.0-rc2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.0-rc2">
                v1.12.0-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.12.0-rc1/docs/reference/commandline/cli.md"
              data-name="v1.12.0-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.12.0-rc1">
                v1.12.0-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.11.2/docs/reference/commandline/cli.md"
              data-name="v1.11.2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.11.2">
                v1.11.2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.11.2-rc1/docs/reference/commandline/cli.md"
              data-name="v1.11.2-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.11.2-rc1">
                v1.11.2-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.11.1/docs/reference/commandline/cli.md"
              data-name="v1.11.1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.11.1">
                v1.11.1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.11.1-rc1/docs/reference/commandline/cli.md"
              data-name="v1.11.1-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.11.1-rc1">
                v1.11.1-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.11.0/docs/reference/commandline/cli.md"
              data-name="v1.11.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.11.0">
                v1.11.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.11.0-rc5/docs/reference/commandline/cli.md"
              data-name="v1.11.0-rc5"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.11.0-rc5">
                v1.11.0-rc5
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.11.0-rc4/docs/reference/commandline/cli.md"
              data-name="v1.11.0-rc4"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.11.0-rc4">
                v1.11.0-rc4
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.11.0-rc3/docs/reference/commandline/cli.md"
              data-name="v1.11.0-rc3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.11.0-rc3">
                v1.11.0-rc3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.11.0-rc2/docs/reference/commandline/cli.md"
              data-name="v1.11.0-rc2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.11.0-rc2">
                v1.11.0-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.11.0-rc1/docs/reference/commandline/cli.md"
              data-name="v1.11.0-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.11.0-rc1">
                v1.11.0-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.10.3/docs/reference/commandline/cli.md"
              data-name="v1.10.3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.10.3">
                v1.10.3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.10.3-rc2/docs/reference/commandline/cli.md"
              data-name="v1.10.3-rc2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.10.3-rc2">
                v1.10.3-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.10.3-rc1/docs/reference/commandline/cli.md"
              data-name="v1.10.3-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.10.3-rc1">
                v1.10.3-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.10.2/docs/reference/commandline/cli.md"
              data-name="v1.10.2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.10.2">
                v1.10.2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.10.2-rc1/docs/reference/commandline/cli.md"
              data-name="v1.10.2-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.10.2-rc1">
                v1.10.2-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.10.1/docs/reference/commandline/cli.md"
              data-name="v1.10.1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.10.1">
                v1.10.1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.10.1-rc1/docs/reference/commandline/cli.md"
              data-name="v1.10.1-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.10.1-rc1">
                v1.10.1-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.10.0/docs/reference/commandline/cli.md"
              data-name="v1.10.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.10.0">
                v1.10.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.10.0-rc4/docs/reference/commandline/cli.md"
              data-name="v1.10.0-rc4"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.10.0-rc4">
                v1.10.0-rc4
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.10.0-rc3/docs/reference/commandline/cli.md"
              data-name="v1.10.0-rc3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.10.0-rc3">
                v1.10.0-rc3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.10.0-rc2/docs/reference/commandline/cli.md"
              data-name="v1.10.0-rc2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.10.0-rc2">
                v1.10.0-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.10.0-rc1/docs/reference/commandline/cli.md"
              data-name="v1.10.0-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.10.0-rc1">
                v1.10.0-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.9.1/docs/reference/commandline/cli.md"
              data-name="v1.9.1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.9.1">
                v1.9.1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.9.1-rc1/docs/reference/commandline/cli.md"
              data-name="v1.9.1-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.9.1-rc1">
                v1.9.1-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.9.0/docs/reference/commandline/cli.md"
              data-name="v1.9.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.9.0">
                v1.9.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.9.0-rc5/docs/reference/commandline/cli.md"
              data-name="v1.9.0-rc5"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.9.0-rc5">
                v1.9.0-rc5
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.9.0-rc4/docs/reference/commandline/cli.md"
              data-name="v1.9.0-rc4"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.9.0-rc4">
                v1.9.0-rc4
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.9.0-rc3/docs/reference/commandline/cli.md"
              data-name="v1.9.0-rc3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.9.0-rc3">
                v1.9.0-rc3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.9.0-rc2/docs/reference/commandline/cli.md"
              data-name="v1.9.0-rc2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.9.0-rc2">
                v1.9.0-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.9.0-rc1/docs/reference/commandline/cli.md"
              data-name="v1.9.0-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.9.0-rc1">
                v1.9.0-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.8.3/docs/reference/commandline/cli.md"
              data-name="v1.8.3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.8.3">
                v1.8.3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.8.2/docs/reference/commandline/cli.md"
              data-name="v1.8.2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.8.2">
                v1.8.2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.8.2-rc1/docs/reference/commandline/cli.md"
              data-name="v1.8.2-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.8.2-rc1">
                v1.8.2-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.8.1/docs/reference/commandline/cli.md"
              data-name="v1.8.1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.8.1">
                v1.8.1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.8.0/docs/reference/commandline/cli.md"
              data-name="v1.8.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.8.0">
                v1.8.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.8.0-rc3/docs/reference/commandline/cli.md"
              data-name="v1.8.0-rc3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.8.0-rc3">
                v1.8.0-rc3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.8.0-rc2/docs/reference/commandline/cli.md"
              data-name="v1.8.0-rc2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.8.0-rc2">
                v1.8.0-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.8.0-rc1/docs/reference/commandline/cli.md"
              data-name="v1.8.0-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.8.0-rc1">
                v1.8.0-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.7.1/docs/reference/commandline/cli.md"
              data-name="v1.7.1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.7.1">
                v1.7.1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.7.1-rc3/docs/reference/commandline/cli.md"
              data-name="v1.7.1-rc3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.7.1-rc3">
                v1.7.1-rc3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.7.1-rc2/docs/reference/commandline/cli.md"
              data-name="v1.7.1-rc2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.7.1-rc2">
                v1.7.1-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.7.1-rc1/docs/reference/commandline/cli.md"
              data-name="v1.7.1-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.7.1-rc1">
                v1.7.1-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.7.0/docs/reference/commandline/cli.md"
              data-name="v1.7.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.7.0">
                v1.7.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.7.0-rc5/docs/reference/commandline/cli.md"
              data-name="v1.7.0-rc5"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.7.0-rc5">
                v1.7.0-rc5
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.7.0-rc4/docs/reference/commandline/cli.md"
              data-name="v1.7.0-rc4"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.7.0-rc4">
                v1.7.0-rc4
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.7.0-rc3/docs/reference/commandline/cli.md"
              data-name="v1.7.0-rc3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.7.0-rc3">
                v1.7.0-rc3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.7.0-rc2/docs/reference/commandline/cli.md"
              data-name="v1.7.0-rc2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.7.0-rc2">
                v1.7.0-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.7.0-rc1/docs/reference/commandline/cli.md"
              data-name="v1.7.0-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.7.0-rc1">
                v1.7.0-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.6.2/docs/reference/commandline/cli.md"
              data-name="v1.6.2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.6.2">
                v1.6.2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.6.1/docs/reference/commandline/cli.md"
              data-name="v1.6.1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.6.1">
                v1.6.1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.6.0/docs/reference/commandline/cli.md"
              data-name="v1.6.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.6.0">
                v1.6.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.6.0-rc7/docs/reference/commandline/cli.md"
              data-name="v1.6.0-rc7"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.6.0-rc7">
                v1.6.0-rc7
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.6.0-rc6/docs/reference/commandline/cli.md"
              data-name="v1.6.0-rc6"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.6.0-rc6">
                v1.6.0-rc6
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.6.0-rc5/docs/reference/commandline/cli.md"
              data-name="v1.6.0-rc5"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.6.0-rc5">
                v1.6.0-rc5
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.6.0-rc4/docs/reference/commandline/cli.md"
              data-name="v1.6.0-rc4"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.6.0-rc4">
                v1.6.0-rc4
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.6.0-rc3/docs/reference/commandline/cli.md"
              data-name="v1.6.0-rc3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.6.0-rc3">
                v1.6.0-rc3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.6.0-rc2/docs/reference/commandline/cli.md"
              data-name="v1.6.0-rc2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.6.0-rc2">
                v1.6.0-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.6.0-rc1/docs/reference/commandline/cli.md"
              data-name="v1.6.0-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.6.0-rc1">
                v1.6.0-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.5.0/docs/reference/commandline/cli.md"
              data-name="v1.5.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.5.0">
                v1.5.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.5.0-rc4/docs/reference/commandline/cli.md"
              data-name="v1.5.0-rc4"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.5.0-rc4">
                v1.5.0-rc4
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.5.0-rc3/docs/reference/commandline/cli.md"
              data-name="v1.5.0-rc3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.5.0-rc3">
                v1.5.0-rc3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.5.0-rc2/docs/reference/commandline/cli.md"
              data-name="v1.5.0-rc2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.5.0-rc2">
                v1.5.0-rc2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.5.0-rc1/docs/reference/commandline/cli.md"
              data-name="v1.5.0-rc1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.5.0-rc1">
                v1.5.0-rc1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.4.1/docs/reference/commandline/cli.md"
              data-name="v1.4.1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.4.1">
                v1.4.1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/docker/docker/tree/v1.4.0/docs/reference/commandline/cli.md"
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
    <span class="repo-root js-repo-root"><span class="js-path-segment"><a href="/docker/docker"><span>docker</span></a></span></span><span class="separator">/</span><span class="js-path-segment"><a href="/docker/docker/tree/master/docs"><span>docs</span></a></span><span class="separator">/</span><span class="js-path-segment"><a href="/docker/docker/tree/master/docs/reference"><span>reference</span></a></span><span class="separator">/</span><span class="js-path-segment"><a href="/docker/docker/tree/master/docs/reference/commandline"><span>commandline</span></a></span><span class="separator">/</span><strong class="final-path">cli.md</strong>
  </div>
</div>


  <div class="commit-tease">
      <span class="float-right">
        <a class="commit-tease-sha" href="/docker/docker/commit/7e3169f26d4600691de9698598a2e5a064ea85eb" data-pjax>
          7e3169f
        </a>
        <relative-time datetime="2017-03-02T01:14:15Z">Mar 2, 2017</relative-time>
      </span>
      <div>
        <img alt="@thaJeztah" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/1804568?v=3&amp;s=40" width="20" />
        <a href="/thaJeztah" class="user-mention" rel="contributor">thaJeztah</a>
          <a href="/docker/docker/commit/7e3169f26d4600691de9698598a2e5a064ea85eb" class="message" data-pjax="true" title="remove Jekyll tags from CLI reference

These Markdown files are now embedded in a YAML
file for templating in the documentation, and
these special markers are no longer needed.

Signed-off-by: Sebastiaan van Stijn &lt;github@gone.nl&gt;">remove Jekyll tags from CLI reference</a>
      </div>

    <div class="commit-tease-contributors">
      <button type="button" class="btn-link muted-link contributors-toggle" data-facebox="#blob_contributors_box">
        <strong>25</strong>
         contributors
      </button>
          <a class="avatar-link tooltipped tooltipped-s" aria-label="thaJeztah" href="/docker/docker/commits/master/docs/reference/commandline/cli.md?author=thaJeztah"><img alt="@thaJeztah" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/1804568?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="vdemeester" href="/docker/docker/commits/master/docs/reference/commandline/cli.md?author=vdemeester"><img alt="@vdemeester" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/6508?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="mstanleyjones" href="/docker/docker/commits/master/docs/reference/commandline/cli.md?author=mstanleyjones"><img alt="@mstanleyjones" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/7674613?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="YuPengZTE" href="/docker/docker/commits/master/docs/reference/commandline/cli.md?author=YuPengZTE"><img alt="@YuPengZTE" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/20062886?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="yuexiao-wang" href="/docker/docker/commits/master/docs/reference/commandline/cli.md?author=yuexiao-wang"><img alt="@yuexiao-wang" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/20082558?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="runcom" href="/docker/docker/commits/master/docs/reference/commandline/cli.md?author=runcom"><img alt="@runcom" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/849915?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="yongtang" href="/docker/docker/commits/master/docs/reference/commandline/cli.md?author=yongtang"><img alt="@yongtang" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/6932348?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="SvenDowideit" href="/docker/docker/commits/master/docs/reference/commandline/cli.md?author=SvenDowideit"><img alt="@SvenDowideit" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/28492?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="albers" href="/docker/docker/commits/master/docs/reference/commandline/cli.md?author=albers"><img alt="@albers" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/2901725?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="duglin" href="/docker/docker/commits/master/docs/reference/commandline/cli.md?author=duglin"><img alt="@duglin" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/1944671?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="cpuguy83" href="/docker/docker/commits/master/docs/reference/commandline/cli.md?author=cpuguy83"><img alt="@cpuguy83" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/799078?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="tomxtobin" href="/docker/docker/commits/master/docs/reference/commandline/cli.md?author=tomxtobin"><img alt="@tomxtobin" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/28852?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="tiborvass" href="/docker/docker/commits/master/docs/reference/commandline/cli.md?author=tiborvass"><img alt="@tiborvass" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/827131?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="chenchun" href="/docker/docker/commits/master/docs/reference/commandline/cli.md?author=chenchun"><img alt="@chenchun" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/985861?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="NathanMcCauley" href="/docker/docker/commits/master/docs/reference/commandline/cli.md?author=NathanMcCauley"><img alt="@NathanMcCauley" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/695682?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="moysesb" href="/docker/docker/commits/master/docs/reference/commandline/cli.md?author=moysesb"><img alt="@moysesb" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/3748237?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="vikstrous" href="/docker/docker/commits/master/docs/reference/commandline/cli.md?author=vikstrous"><img alt="@vikstrous" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/482425?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="lixiaobing10051267" href="/docker/docker/commits/master/docs/reference/commandline/cli.md?author=lixiaobing10051267"><img alt="@lixiaobing10051267" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/16774510?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="KingEmet" href="/docker/docker/commits/master/docs/reference/commandline/cli.md?author=KingEmet"><img alt="@KingEmet" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/1200829?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="gcuisinier" href="/docker/docker/commits/master/docs/reference/commandline/cli.md?author=gcuisinier"><img alt="@gcuisinier" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/135300?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="gdevillele" href="/docker/docker/commits/master/docs/reference/commandline/cli.md?author=gdevillele"><img alt="@gdevillele" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/939999?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="estesp" href="/docker/docker/commits/master/docs/reference/commandline/cli.md?author=estesp"><img alt="@estesp" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/1397980?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="dmcgowan" href="/docker/docker/commits/master/docs/reference/commandline/cli.md?author=dmcgowan"><img alt="@dmcgowan" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/169601?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="calavera" href="/docker/docker/commits/master/docs/reference/commandline/cli.md?author=calavera"><img alt="@calavera" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/1050?v=3&amp;s=40" width="20" /> </a>
    <a class="avatar-link tooltipped tooltipped-s" aria-label="czerasz" href="/docker/docker/commits/master/docs/reference/commandline/cli.md?author=czerasz"><img alt="@czerasz" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/384489?v=3&amp;s=40" width="20" /> </a>


    </div>

    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header" data-facebox-id="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list" data-facebox-id="facebox-description">
          <li class="facebox-user-list-item">
            <img alt="@thaJeztah" height="24" src="https://avatars2.githubusercontent.com/u/1804568?v=3&amp;s=48" width="24" />
            <a href="/thaJeztah">thaJeztah</a>
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
            <img alt="@YuPengZTE" height="24" src="https://avatars2.githubusercontent.com/u/20062886?v=3&amp;s=48" width="24" />
            <a href="/YuPengZTE">YuPengZTE</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@yuexiao-wang" height="24" src="https://avatars0.githubusercontent.com/u/20082558?v=3&amp;s=48" width="24" />
            <a href="/yuexiao-wang">yuexiao-wang</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@runcom" height="24" src="https://avatars3.githubusercontent.com/u/849915?v=3&amp;s=48" width="24" />
            <a href="/runcom">runcom</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@yongtang" height="24" src="https://avatars0.githubusercontent.com/u/6932348?v=3&amp;s=48" width="24" />
            <a href="/yongtang">yongtang</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@SvenDowideit" height="24" src="https://avatars3.githubusercontent.com/u/28492?v=3&amp;s=48" width="24" />
            <a href="/SvenDowideit">SvenDowideit</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@albers" height="24" src="https://avatars2.githubusercontent.com/u/2901725?v=3&amp;s=48" width="24" />
            <a href="/albers">albers</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@duglin" height="24" src="https://avatars3.githubusercontent.com/u/1944671?v=3&amp;s=48" width="24" />
            <a href="/duglin">duglin</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@cpuguy83" height="24" src="https://avatars3.githubusercontent.com/u/799078?v=3&amp;s=48" width="24" />
            <a href="/cpuguy83">cpuguy83</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@tomxtobin" height="24" src="https://avatars1.githubusercontent.com/u/28852?v=3&amp;s=48" width="24" />
            <a href="/tomxtobin">tomxtobin</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@tiborvass" height="24" src="https://avatars0.githubusercontent.com/u/827131?v=3&amp;s=48" width="24" />
            <a href="/tiborvass">tiborvass</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@chenchun" height="24" src="https://avatars3.githubusercontent.com/u/985861?v=3&amp;s=48" width="24" />
            <a href="/chenchun">chenchun</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@NathanMcCauley" height="24" src="https://avatars3.githubusercontent.com/u/695682?v=3&amp;s=48" width="24" />
            <a href="/NathanMcCauley">NathanMcCauley</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@moysesb" height="24" src="https://avatars0.githubusercontent.com/u/3748237?v=3&amp;s=48" width="24" />
            <a href="/moysesb">moysesb</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@vikstrous" height="24" src="https://avatars2.githubusercontent.com/u/482425?v=3&amp;s=48" width="24" />
            <a href="/vikstrous">vikstrous</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@lixiaobing10051267" height="24" src="https://avatars3.githubusercontent.com/u/16774510?v=3&amp;s=48" width="24" />
            <a href="/lixiaobing10051267">lixiaobing10051267</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@KingEmet" height="24" src="https://avatars0.githubusercontent.com/u/1200829?v=3&amp;s=48" width="24" />
            <a href="/KingEmet">KingEmet</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@gcuisinier" height="24" src="https://avatars2.githubusercontent.com/u/135300?v=3&amp;s=48" width="24" />
            <a href="/gcuisinier">gcuisinier</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@gdevillele" height="24" src="https://avatars0.githubusercontent.com/u/939999?v=3&amp;s=48" width="24" />
            <a href="/gdevillele">gdevillele</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@estesp" height="24" src="https://avatars1.githubusercontent.com/u/1397980?v=3&amp;s=48" width="24" />
            <a href="/estesp">estesp</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@dmcgowan" height="24" src="https://avatars2.githubusercontent.com/u/169601?v=3&amp;s=48" width="24" />
            <a href="/dmcgowan">dmcgowan</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@calavera" height="24" src="https://avatars2.githubusercontent.com/u/1050?v=3&amp;s=48" width="24" />
            <a href="/calavera">calavera</a>
          </li>
          <li class="facebox-user-list-item">
            <img alt="@czerasz" height="24" src="https://avatars3.githubusercontent.com/u/384489?v=3&amp;s=48" width="24" />
            <a href="/czerasz">czerasz</a>
          </li>
      </ul>
    </div>
  </div>


<div class="file">
  <div class="file-header">
  <div class="file-actions">

    <div class="BtnGroup">
      <a href="/docker/docker/raw/master/docs/reference/commandline/cli.md" class="btn btn-sm BtnGroup-item" id="raw-url">Raw</a>
        <a href="/docker/docker/blame/master/docs/reference/commandline/cli.md" class="btn btn-sm js-update-url-with-hash BtnGroup-item" data-hotkey="b">Blame</a>
      <a href="/docker/docker/commits/master/docs/reference/commandline/cli.md" class="btn btn-sm BtnGroup-item" rel="nofollow">History</a>
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
      294 lines (230 sloc)
      <span class="file-info-divider"></span>
    12.3 KB
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
  <td><div>Use the Docker command line</div></td>

  <td><div>Docker's CLI command description and usage</div></td>

  <td><div>Docker, Docker documentation, CLI, command line</div></td>
  </tr>
  </tbody>
</table>


<h1><a id="user-content-docker" class="anchor" href="#docker" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>docker</h1>
<p>To list available commands, either run <code>docker</code> with no parameters
or execute <code>docker help</code>:</p>
<div class="highlight highlight-source-shell"><pre>$ docker
Usage: docker [OPTIONS] COMMAND [ARG...]
       docker [ --help <span class="pl-k">|</span> -v <span class="pl-k">|</span> --version ]

A self-sufficient runtime <span class="pl-k">for</span> containers.

Options:
      --config string      Location of client config files (default <span class="pl-s"><span class="pl-pds">"</span>/root/.docker<span class="pl-pds">"</span></span>)
  -D, --debug              Enable debug mode
      --help               Print usage
  -H, --host value         Daemon socket(s) to connect to (default [])
  -l, --log-level string   Set the logging level (<span class="pl-s"><span class="pl-pds">"</span>debug<span class="pl-pds">"</span></span><span class="pl-k">|</span><span class="pl-s"><span class="pl-pds">"</span>info<span class="pl-pds">"</span></span><span class="pl-k">|</span><span class="pl-s"><span class="pl-pds">"</span>warn<span class="pl-pds">"</span></span><span class="pl-k">|</span><span class="pl-s"><span class="pl-pds">"</span>error<span class="pl-pds">"</span></span><span class="pl-k">|</span><span class="pl-s"><span class="pl-pds">"</span>fatal<span class="pl-pds">"</span></span>) (default <span class="pl-s"><span class="pl-pds">"</span>info<span class="pl-pds">"</span></span>)
      --tls                Use TLS<span class="pl-k">;</span> implied by --tlsverify
      --tlscacert string   Trust certs signed only by this CA (default <span class="pl-s"><span class="pl-pds">"</span>/root/.docker/ca.pem<span class="pl-pds">"</span></span>)
      --tlscert string     Path to TLS certificate file (default <span class="pl-s"><span class="pl-pds">"</span>/root/.docker/cert.pem<span class="pl-pds">"</span></span>)
      --tlskey string      Path to TLS key file (default <span class="pl-s"><span class="pl-pds">"</span>/root/.docker/key.pem<span class="pl-pds">"</span></span>)
      --tlsverify          Use TLS and verify the remote
  -v, --version            Print version information and quit

Commands:
    attach    Attach to a running container
    <span class="pl-c"><span class="pl-c">#</span> […]</span></pre></div>
<h2><a id="user-content-description" class="anchor" href="#description" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Description</h2>
<p>Depending on your Docker system configuration, you may be required to preface
each <code>docker</code> command with <code>sudo</code>. To avoid having to use <code>sudo</code> with the
<code>docker</code> command, your system administrator can create a Unix group called
<code>docker</code> and add users to it.</p>
<p>For more information about installing Docker or <code>sudo</code> configuration, refer to
the <a href="https://docs.docker.com/engine/installation/">installation</a> instructions for your operating system.</p>
<h3><a id="user-content-environment-variables" class="anchor" href="#environment-variables" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Environment variables</h3>
<p>For easy reference, the following list of environment variables are supported
by the <code>docker</code> command line:</p>
<ul>
<li><code>DOCKER_API_VERSION</code> The API version to use (e.g. <code>1.19</code>)</li>
<li><code>DOCKER_CONFIG</code> The location of your client configuration files.</li>
<li><code>DOCKER_CERT_PATH</code> The location of your authentication keys.</li>
<li><code>DOCKER_DRIVER</code> The graph driver to use.</li>
<li><code>DOCKER_HOST</code> Daemon socket to connect to.</li>
<li><code>DOCKER_NOWARN_KERNEL_VERSION</code> Prevent warnings that your Linux kernel is
unsuitable for Docker.</li>
<li><code>DOCKER_RAMDISK</code> If set this will disable 'pivot_root'.</li>
<li><code>DOCKER_TLS_VERIFY</code> When set Docker uses TLS and verifies the remote.</li>
<li><code>DOCKER_CONTENT_TRUST</code> When set Docker uses notary to sign and verify images.
Equates to <code>--disable-content-trust=false</code> for build, create, pull, push, run.</li>
<li><code>DOCKER_CONTENT_TRUST_SERVER</code> The URL of the Notary server to use. This defaults
to the same URL as the registry.</li>
<li><code>DOCKER_HIDE_LEGACY_COMMANDS</code> When set, Docker hides "legacy" top-level commands (such as <code>docker rm</code>, and
<code>docker pull</code>) in <code>docker help</code> output, and only <code>Management commands</code> per object-type (e.g., <code>docker container</code>) are
printed. This may become the default in a future release, at which point this environment-variable is removed.</li>
<li><code>DOCKER_TMPDIR</code> Location for temporary Docker files.</li>
</ul>
<p>Because Docker is developed using Go, you can also use any environment
variables used by the Go runtime. In particular, you may find these useful:</p>
<ul>
<li><code>HTTP_PROXY</code></li>
<li><code>HTTPS_PROXY</code></li>
<li><code>NO_PROXY</code></li>
</ul>
<p>These Go environment variables are case-insensitive. See the
<a href="http://golang.org/pkg/net/http/">Go specification</a> for details on these
variables.</p>
<h3><a id="user-content-configuration-files" class="anchor" href="#configuration-files" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Configuration files</h3>
<p>By default, the Docker command line stores its configuration files in a
directory called <code>.docker</code> within your <code>$HOME</code> directory. However, you can
specify a different location via the <code>DOCKER_CONFIG</code> environment variable
or the <code>--config</code> command line option. If both are specified, then the
<code>--config</code> option overrides the <code>DOCKER_CONFIG</code> environment variable.
For example:</p>
<pre><code>docker --config ~/testconfigs/ ps
</code></pre>
<p>Instructs Docker to use the configuration files in your <code>~/testconfigs/</code>
directory when running the <code>ps</code> command.</p>
<p>Docker manages most of the files in the configuration directory
and you should not modify them. However, you <em>can modify</em> the
<code>config.json</code> file to control certain aspects of how the <code>docker</code>
command behaves.</p>
<p>Currently, you can modify the <code>docker</code> command behavior using environment
variables or command-line options. You can also use options within
<code>config.json</code> to modify some of the same behavior. When using these
mechanisms, you must keep in mind the order of precedence among them. Command
line options override environment variables and environment variables override
properties you specify in a <code>config.json</code> file.</p>
<p>The <code>config.json</code> file stores a JSON encoding of several properties:</p>
<p>The property <code>HttpHeaders</code> specifies a set of headers to include in all messages
sent from the Docker client to the daemon. Docker does not try to interpret or
understand these header; it simply puts them into the messages. Docker does
not allow these headers to change any headers it sets for itself.</p>
<p>The property <code>psFormat</code> specifies the default format for <code>docker ps</code> output.
When the <code>--format</code> flag is not provided with the <code>docker ps</code> command,
Docker's client uses this property. If this property is not set, the client
falls back to the default table format. For a list of supported formatting
directives, see the
<a href="/docker/docker/blob/master/docs/reference/commandline/ps.md"><strong>Formatting</strong> section in the <code>docker ps</code> documentation</a></p>
<p>The property <code>imagesFormat</code> specifies the default format for <code>docker images</code> output.
When the <code>--format</code> flag is not provided with the <code>docker images</code> command,
Docker's client uses this property. If this property is not set, the client
falls back to the default table format. For a list of supported formatting
directives, see the <a href="/docker/docker/blob/master/docs/reference/commandline/images.md"><strong>Formatting</strong> section in the <code>docker images</code> documentation</a></p>
<p>The property <code>pluginsFormat</code> specifies the default format for <code>docker plugin ls</code> output.
When the <code>--format</code> flag is not provided with the <code>docker plugin ls</code> command,
Docker's client uses this property. If this property is not set, the client
falls back to the default table format. For a list of supported formatting
directives, see the <a href="/docker/docker/blob/master/docs/reference/commandline/plugin_ls.md"><strong>Formatting</strong> section in the <code>docker plugin ls</code> documentation</a></p>
<p>The property <code>servicesFormat</code> specifies the default format for <code>docker service ls</code> output. When the <code>--format</code> flag is not provided with the
<code>docker service ls</code> command, Docker's client uses this property. If this
property is not set, the client falls back to the default json format. For a
list of supported formatting directives, see the
<a href="/docker/docker/blob/master/docs/reference/commandline/service_ls.md"><strong>Formatting</strong> section in the <code>docker service ls</code> documentation</a></p>
<p>The property <code>serviceInspectFormat</code> specifies the default format for <code>docker service inspect</code> output. When the <code>--format</code> flag is not provided with the
<code>docker service inspect</code> command, Docker's client uses this property. If this
property is not set, the client falls back to the default json format. For a
list of supported formatting directives, see the
<a href="/docker/docker/blob/master/docs/reference/commandline/service_inspect.md"><strong>Formatting</strong> section in the <code>docker service inspect</code> documentation</a></p>
<p>The property <code>statsFormat</code> specifies the default format for <code>docker stats</code> output. When the <code>--format</code> flag is not provided with the
<code>docker stats</code> command, Docker's client uses this property. If this
property is not set, the client falls back to the default table
format. For a list of supported formatting directives, see
<a href="/docker/docker/blob/master/docs/reference/commandline/stats.md"><strong>Formatting</strong> section in the <code>docker stats</code> documentation</a></p>
<p>The property <code>credsStore</code> specifies an external binary to serve as the default
credential store. When this property is set, <code>docker login</code> will attempt to
store credentials in the binary specified by <code>docker-credential-&lt;value&gt;</code> which
is visible on <code>$PATH</code>. If this property is not set, credentials will be stored
in the <code>auths</code> property of the config. For more information, see the
<a href="/docker/docker/blob/master/docs/reference/commandline/login.md#credentials-store"><strong>Credentials store</strong> section in the <code>docker login</code> documentation</a></p>
<p>The property <code>credHelpers</code> specifies a set of credential helpers to use
preferentially over <code>credsStore</code> or <code>auths</code> when storing and retrieving
credentials for specific registries. If this property is set, the binary
<code>docker-credential-&lt;value&gt;</code> will be used when storing or retrieving credentials
for a specific registry. For more information, see the
<a href="/docker/docker/blob/master/docs/reference/commandline/login.md#credential-helpers"><strong>Credential helpers</strong> section in the <code>docker login</code> documentation</a></p>
<p>Once attached to a container, users detach from it and leave it running using
the using <code>CTRL-p CTRL-q</code> key sequence. This detach key sequence is customizable
using the <code>detachKeys</code> property. Specify a <code>&lt;sequence&gt;</code> value for the
property. The format of the <code>&lt;sequence&gt;</code> is a comma-separated list of either
a letter [a-Z], or the <code>ctrl-</code> combined with any of the following:</p>
<ul>
<li><code>a-z</code> (a single lowercase alpha character )</li>
<li><code>@</code> (at sign)</li>
<li><code>[</code> (left bracket)</li>
<li><code>\\</code> (two backward slashes)</li>
<li><code>_</code> (underscore)</li>
<li><code>^</code> (caret)</li>
</ul>
<p>Your customization applies to all containers started in with your Docker client.
Users can override your custom or the default key sequence on a per-container
basis. To do this, the user specifies the <code>--detach-keys</code> flag with the <code>docker attach</code>, <code>docker exec</code>, <code>docker run</code> or <code>docker start</code> command.</p>
<p>Following is a sample <code>config.json</code> file:</p>
<div class="highlight highlight-source-json"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>HttpHeaders<span class="pl-pds">"</span></span>: {
    <span class="pl-s"><span class="pl-pds">"</span>MyHeader<span class="pl-pds">"</span></span>: <span class="pl-s"><span class="pl-pds">"</span>MyValue<span class="pl-pds">"</span></span>
  },
  <span class="pl-s"><span class="pl-pds">"</span>psFormat<span class="pl-pds">"</span></span>: <span class="pl-s"><span class="pl-pds">"</span>table {{.ID}}<span class="pl-cce">\\</span>t{{.Image}}<span class="pl-cce">\\</span>t{{.Command}}<span class="pl-cce">\\</span>t{{.Labels}}<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>imagesFormat<span class="pl-pds">"</span></span>: <span class="pl-s"><span class="pl-pds">"</span>table {{.ID}}<span class="pl-cce">\\</span>t{{.Repository}}<span class="pl-cce">\\</span>t{{.Tag}}<span class="pl-cce">\\</span>t{{.CreatedAt}}<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>pluginsFormat<span class="pl-pds">"</span></span>: <span class="pl-s"><span class="pl-pds">"</span>table {{.ID}}<span class="pl-cce">\t</span>{{.Name}}<span class="pl-cce">\t</span>{{.Enabled}}<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>statsFormat<span class="pl-pds">"</span></span>: <span class="pl-s"><span class="pl-pds">"</span>table {{.Container}}<span class="pl-cce">\t</span>{{.CPUPerc}}<span class="pl-cce">\t</span>{{.MemUsage}}<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>servicesFormat<span class="pl-pds">"</span></span>: <span class="pl-s"><span class="pl-pds">"</span>table {{.ID}}<span class="pl-cce">\t</span>{{.Name}}<span class="pl-cce">\t</span>{{.Mode}}<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>serviceInspectFormat<span class="pl-pds">"</span></span>: <span class="pl-s"><span class="pl-pds">"</span>pretty<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>detachKeys<span class="pl-pds">"</span></span>: <span class="pl-s"><span class="pl-pds">"</span>ctrl-e,e<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>credsStore<span class="pl-pds">"</span></span>: <span class="pl-s"><span class="pl-pds">"</span>secretservice<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>credHelpers<span class="pl-pds">"</span></span>: {
    <span class="pl-s"><span class="pl-pds">"</span>awesomereg.example.org<span class="pl-pds">"</span></span>: <span class="pl-s"><span class="pl-pds">"</span>hip-star<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>unicorn.example.com<span class="pl-pds">"</span></span>: <span class="pl-s"><span class="pl-pds">"</span>vcbait<span class="pl-pds">"</span></span>
  }
}</pre></div>
<h3><a id="user-content-notary" class="anchor" href="#notary" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Notary</h3>
<p>If using your own notary server and a self-signed certificate or an internal
Certificate Authority, you need to place the certificate at
<code>tls/&lt;registry_url&gt;/ca.crt</code> in your docker config directory.</p>
<p>Alternatively you can trust the certificate globally by adding it to your system's
list of root Certificate Authorities.</p>
<h2><a id="user-content-examples" class="anchor" href="#examples" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Examples</h2>
<h3><a id="user-content-display-help-text" class="anchor" href="#display-help-text" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Display help text</h3>
<p>To list the help on any command just execute the command, followed by the
<code>--help</code> option.</p>
<pre><code>$ docker run --help

Usage: docker run [OPTIONS] IMAGE [COMMAND] [ARG...]

Run a command in a new container

Options:
      --add-host value             Add a custom host-to-IP mapping (host:ip) (default [])
  -a, --attach value               Attach to STDIN, STDOUT or STDERR (default [])
...
</code></pre>
<h3><a id="user-content-option-types" class="anchor" href="#option-types" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Option types</h3>
<p>Single character command line options can be combined, so rather than
typing <code>docker run -i -t --name test busybox sh</code>,
you can write <code>docker run -it --name test busybox sh</code>.</p>
<h4><a id="user-content-boolean" class="anchor" href="#boolean" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Boolean</h4>
<p>Boolean options take the form <code>-d=false</code>. The value you see in the help text is
the default value which is set if you do <strong>not</strong> specify that flag. If you
specify a Boolean flag without a value, this will set the flag to <code>true</code>,
irrespective of the default value.</p>
<p>For example, running <code>docker run -d</code> will set the value to <code>true</code>, so your
container <strong>will</strong> run in "detached" mode, in the background.</p>
<p>Options which default to <code>true</code> (e.g., <code>docker build --rm=true</code>) can only be
set to the non-default value by explicitly setting them to <code>false</code>:</p>
<div class="highlight highlight-source-shell"><pre>$ docker build --rm=false <span class="pl-c1">.</span></pre></div>
<h4><a id="user-content-multi" class="anchor" href="#multi" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Multi</h4>
<p>You can specify options like <code>-a=[]</code> multiple times in a single command line,
for example in these commands:</p>
<div class="highlight highlight-source-shell"><pre>$ docker run -a stdin -a stdout -i -t ubuntu /bin/bash

$ docker run -a stdin -a stdout -a stderr ubuntu /bin/ls</pre></div>
<p>Sometimes, multiple options can call for a more complex value string as for
<code>-v</code>:</p>
<div class="highlight highlight-source-shell"><pre>$ docker run -v /host:/container example/mysql</pre></div>
<blockquote>
<p><strong>Note</strong>: Do not use the <code>-t</code> and <code>-a stderr</code> options together due to
limitations in the <code>pty</code> implementation. All <code>stderr</code> in <code>pty</code> mode
simply goes to <code>stdout</code>.</p>
</blockquote>
<h4><a id="user-content-strings-and-integers" class="anchor" href="#strings-and-integers" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Strings and Integers</h4>
<p>Options like <code>--name=""</code> expect a string, and they
can only be specified once. Options like <code>-c=0</code>
expect an integer, and they can only be specified once.</p>
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
      <li>&copy; 2017 <span title="0.08692s from github-fe122-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
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

