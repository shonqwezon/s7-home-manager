{
  workbench = {
    colorTheme = "Dark Modern";
    productIconTheme = "fluent-icons";
    iconTheme = "symbols";
    list.smoothScrolling = true;
  };
  editor = {
    rulers = [ 99 ];
    lineHeight = 1.5;
    wordWrap = "on";
    unicodeHighlight.ambiguousCharacters = true;
    formatOnSave = true;
    smoothScrolling = true;
    linkedEditing = true;
    padding.top = 15;
    minimap.enabled = false;
    renderWhitespace = "all";
    detectIndentation = false;
    fontFamily = "JetBrains Mono";
  };
  breadcrumbs = {
    icons = true;
    showKeys = false;
    showFiles = false;
    symbolPath = "off";
    showArrays = false;
    showBooleans = false;
    showClasses = false;
    showConstants = false;
    showConstructors = false;
    showEnumMembers = false;
    showEvents = false;
    showFields = false;
    showEnums = false;
    showFunctions = false;
    showInterfaces = false;
    showMethods = false;
    showModules = false;
    showNamespaces = false;
    showNull = false;
    showNumbers = false;
    showObjects = false;
    showOperators = false;
    showPackages = false;
    showProperties = false;
    showStrings = false;
    showStructs = false;
    showTypeParameters = false;
    showVariables = false;
  };
  files = {
    insertFinalNewline = true;
    associations = {
      "*.tpl" = "go";
      "templates/**/*.yaml" = "go";
      "*.yaml.gotmpl" = "yaml";
      "*.jenkinsfile" = "groovy";
    };
    autoSave = "afterDelay";
  };
  update = {
    enableWindowsBackgroundUpdates = false;
    showPostInstallInfo = true;
  };
  terminal.integrated = {
    smoothScrolling = true;
    defaultProfile.linux = "zsh";
  };
  explorer = {
    compactFolders = false;
    autoReveal = "focusNoScroll";
    confirmDelete = false;
  };
  scm.compactFolders = false;
  diffEditor.ignoreTrimWhitespace = false;
  git = {
    confirmSync = false;
    autofetch = false;
    enableSmartCommit = true;
  };
}
