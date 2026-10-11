/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.build.fetch;

import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.build.IAntScript;
import org.eclipse.pde.build.IFetchFactory;
import org.eclipse.pde.internal.build.Messages;
import org.eclipse.pde.internal.build.Utils;

public class CVSFetchTaskFactory
implements IFetchFactory {
    public static final String ID = "CVS";
    private static final String TARGET_GET_FROM_CVS = "FetchFromCVS";
    private static final String SEPARATOR = ",";
    public static final String OVERRIDE_TAG = "CVS";
    private static final String KEY_CVSROOT = "cvsRoot";
    private static final String KEY_CVSPASSFILE = "cvsPassFile";
    private static final String KEY_PASSWORD = "password";
    private static final String KEY_PATH = "path";
    private static final String KEY_PREBUILT = "prebuilt";
    private static final String PROP_DESTINATIONFOLDER = "destinationFolder";
    private static final String PROP_CVSROOT = "cvsRoot";
    private static final String PROP_MODULE = "module";
    private static final String PROP_TAG = "tag";
    private static final String PROP_QUIET = "quiet";
    private static final String PROP_REALLYQUIET = "reallyquiet";
    private static final String PROP_FILETOCHECK = "fileToCheck";
    private static final String PROP_ELEMENTNAME = "elementName";

    private void generateAuthentificationAntTask(Map entryInfos, IAntScript script) {
        String password = (String)entryInfos.get(KEY_PASSWORD);
        String cvsPassFileLocation = (String)entryInfos.get(KEY_CVSPASSFILE);
        if (password != null) {
            this.printCVSPassTask((String)entryInfos.get("cvsRoot"), password, cvsPassFileLocation, script);
        }
    }

    public void generateRetrieveElementCall(Map entryInfos, IPath destination, IAntScript script) {
        String type = (String)entryInfos.get("type");
        String element = (String)entryInfos.get("element");
        boolean prebuilt = Boolean.valueOf((String)entryInfos.get(KEY_PREBUILT));
        HashMap<String, String> params = new HashMap<String, String>(5);
        int remove = prebuilt ? 2 : 1;
        String suggestedPath = destination.lastSegment();
        params.put(PROP_DESTINATIONFOLDER, destination.removeLastSegments(remove).toString());
        params.put(PROP_TAG, (String)entryInfos.get(PROP_TAG));
        params.put("cvsRoot", (String)entryInfos.get("cvsRoot"));
        params.put(PROP_QUIET, "${cvs.quiet}");
        params.put(PROP_REALLYQUIET, "${cvs.reallyquiet}");
        if (prebuilt) {
            if (type.equals("plugin")) {
                element = "plugins";
            } else if (type.equals("feature")) {
                element = "features";
            }
        } else if (suggestedPath != null) {
            element = suggestedPath;
        }
        params.put(PROP_ELEMENTNAME, element);
        String module = entryInfos.get(KEY_PATH) == null ? element : (String)entryInfos.get(KEY_PATH);
        params.put(PROP_MODULE, module);
        IPath locationToCheck = (IPath)destination.clone();
        if (prebuilt) {
            locationToCheck = locationToCheck.removeLastSegments(1);
            locationToCheck = locationToCheck.append(new Path(module).lastSegment());
        } else if (type.equals("feature")) {
            locationToCheck = locationToCheck.append("feature.xml");
        } else if (type.equals("plugin")) {
            locationToCheck = locationToCheck.append("plugin.xml");
        } else if (type.equals("fragment")) {
            locationToCheck = locationToCheck.append("fragment.xml");
        } else if (type.equals("bundle")) {
            locationToCheck = locationToCheck.append("META-INF/MANIFEST.MF");
        }
        params.put(PROP_FILETOCHECK, locationToCheck.toString());
        this.printAvailableTask(locationToCheck.toString(), locationToCheck.toString(), script);
        if (!prebuilt && (type.equals("plugin") || type.equals("fragment"))) {
            this.printAvailableTask(locationToCheck.toString(), locationToCheck.removeLastSegments(1).append("META-INF/MANIFEST.MF").toString(), script);
        }
        this.generateAuthentificationAntTask(entryInfos, script);
        script.printAntCallTask(TARGET_GET_FROM_CVS, true, params);
    }

    public void generateRetrieveFilesCall(Map entryInfos, IPath destination, String[] files, IAntScript script) {
        this.generateAuthentificationAntTask(entryInfos, script);
        String path = (String)entryInfos.get(KEY_PATH);
        int i = 0;
        while (i < files.length) {
            String file = files[i];
            IPath filePath = path != null ? new Path(path).append(file) : new Path((String)entryInfos.get("element")).append(file);
            String tag = (String)entryInfos.get(PROP_TAG);
            String cvsRoot = (String)entryInfos.get("cvsRoot");
            String dest = "true".equalsIgnoreCase((String)entryInfos.get(KEY_PREBUILT)) ? destination.removeLastSegments(1).toString() : destination.toString();
            this.printCVSTask("export -r " + tag + ' ' + filePath.toString(), cvsRoot, dest, null, null, "true", Utils.getPropertyFormat(PROP_REALLYQUIET), null, null, "${fetch.failonerror}", script);
            script.println("<move file=\"" + destination + '/' + filePath + "\"" + " tofile=\"" + destination.append(file) + "\" failonerror=\"false\" />");
            ++i;
        }
    }

    public void addTargets(IAntScript script) {
        script.printTargetDeclaration(TARGET_GET_FROM_CVS, null, null, "${fileToCheck}", null);
        this.printCVSTask("export -d " + Utils.getPropertyFormat(PROP_ELEMENTNAME), Utils.getPropertyFormat("cvsRoot"), Utils.getPropertyFormat(PROP_DESTINATIONFOLDER), Utils.getPropertyFormat(PROP_MODULE), Utils.getPropertyFormat(PROP_TAG), Utils.getPropertyFormat(PROP_QUIET), Utils.getPropertyFormat(PROP_REALLYQUIET), null, "CVS - " + Utils.getPropertyFormat(PROP_MODULE), script);
        script.printTargetEnd();
    }

    private void legacyParseMapFileEntry(String[] arguments, Properties overrideTags, Map entryInfos) {
        String overrideTag = overrideTags != null ? overrideTags.getProperty("CVS") : null;
        entryInfos.put(KEY_CVSPASSFILE, arguments.length > 4 && !arguments[4].equals("") ? arguments[4] : null);
        entryInfos.put(PROP_TAG, overrideTag != null && overrideTag.trim().length() != 0 ? overrideTag : arguments[0]);
        entryInfos.put("cvsRoot", arguments[1]);
        entryInfos.put(KEY_PASSWORD, arguments.length > 2 && !arguments[2].equals("") ? arguments[2] : null);
        entryInfos.put(KEY_PATH, arguments.length > 3 && !arguments[3].equals("") ? arguments[3] : null);
    }

    public void parseMapFileEntry(String repoSpecificentry, Properties overrideTags, Map entryInfos) throws CoreException {
        String[] arguments = Utils.getArrayFromStringWithBlank(repoSpecificentry, SEPARATOR);
        if (arguments.length < 2) {
            String message = NLS.bind((String)Messages.error_incorrectDirectoryEntry, entryInfos.get("element"));
            throw new CoreException((IStatus)new Status(4, "org.eclipse.pde.build", 1, message, null));
        }
        HashMap<String, String> table = new HashMap<String, String>();
        int i = 0;
        while (i < arguments.length) {
            String arg = arguments[i];
            int index = arg.indexOf(61);
            if (index == -1) {
                this.legacyParseMapFileEntry(arguments, overrideTags, entryInfos);
                this.addProjectReference(entryInfos);
                return;
            }
            String key = arg.substring(0, index);
            String value = arg.substring(index + 1);
            table.put(key, value);
            ++i;
        }
        entryInfos.put(KEY_CVSPASSFILE, table.get(KEY_CVSPASSFILE));
        String overrideTag = overrideTags != null ? overrideTags.getProperty("CVS") : null;
        entryInfos.put(PROP_TAG, overrideTag != null && overrideTag.trim().length() != 0 ? overrideTag : table.get(PROP_TAG));
        entryInfos.put("cvsRoot", table.get("cvsRoot"));
        entryInfos.put(KEY_PASSWORD, table.get(KEY_PASSWORD));
        entryInfos.put(KEY_PATH, table.get(KEY_PATH));
        entryInfos.put(KEY_PREBUILT, table.get(KEY_PREBUILT));
        this.addProjectReference(entryInfos);
    }

    private void addProjectReference(Map entryInfos) {
        String sourceURLs;
        String repoLocation = (String)entryInfos.get("cvsRoot");
        String module = (String)entryInfos.get(KEY_PATH);
        String projectName = (String)entryInfos.get("element");
        String tag = (String)entryInfos.get(PROP_TAG);
        if (repoLocation != null && projectName != null && (sourceURLs = this.asReference(repoLocation, module != null ? module : projectName, projectName, tag)) != null) {
            entryInfos.put("sourceReferences", sourceURLs);
        }
    }

    private String asReference(String repoLocation, String module, String projectName, String tagName) {
        String protocol = null;
        String host = null;
        String root = null;
        int at = repoLocation.indexOf(64);
        if (at < 0) {
            if (repoLocation.startsWith(":local:")) {
                protocol = "local";
                root = repoLocation.substring(7);
            }
        } else if (at < repoLocation.length() - 2) {
            String serverRoot = repoLocation.substring(at + 1);
            String protocolUserPass = repoLocation.substring(0, at);
            int colon = serverRoot.indexOf(58);
            if (colon > 0) {
                host = serverRoot.substring(0, colon);
                if (colon < serverRoot.length() - 2) {
                    root = serverRoot.substring(colon + 1);
                }
                if (protocolUserPass.startsWith(":")) {
                    colon = protocolUserPass.indexOf(58, 1);
                    if (colon > 0) {
                        protocol = protocolUserPass.substring(1, colon);
                    }
                } else {
                    protocol = "pserver";
                }
            }
        }
        if (protocol == null || root == null) {
            return null;
        }
        String sep = ":";
        if (root.indexOf(58) >= 0) {
            sep = "|";
        }
        StringBuffer buffer = new StringBuffer();
        buffer.append("scm:cvs");
        buffer.append(sep);
        buffer.append(protocol);
        buffer.append(sep);
        if (host != null) {
            buffer.append(host);
            buffer.append(sep);
        }
        buffer.append(root);
        buffer.append(sep);
        buffer.append(module);
        Path modulePath = new Path(module);
        if (!modulePath.lastSegment().equals(projectName)) {
            buffer.append(";project=\"");
            buffer.append(projectName);
            buffer.append('\"');
        }
        if (tagName != null && !tagName.equals("HEAD")) {
            buffer.append(";tag=");
            buffer.append(tagName);
        }
        return buffer.toString();
    }

    private void printCVSTask(String command, String cvsRoot, String dest, String module, String tag, String quiet, String reallyquiet, String passFile, String taskname, IAntScript script) {
        this.printCVSTask(command, cvsRoot, dest, module, tag, quiet, reallyquiet, passFile, taskname, null, script);
    }

    private void printCVSTask(String command, String cvsRoot, String dest, String module, String tag, String quiet, String reallyquiet, String passFile, String taskname, String failOnError, IAntScript script) {
        script.printTabs();
        script.print("<cvs");
        script.printAttribute("command", command, false);
        script.printAttribute("cvsRoot", cvsRoot, false);
        script.printAttribute("dest", dest, false);
        script.printAttribute("package", module, false);
        script.printAttribute(PROP_TAG, tag, false);
        script.printAttribute(PROP_QUIET, quiet, false);
        script.printAttribute(PROP_REALLYQUIET, reallyquiet, false);
        script.printAttribute("passfile", passFile, false);
        script.printAttribute("taskname", taskname, false);
        script.printAttribute("failonerror", failOnError, false);
        script.println("/>");
    }

    private void printCVSPassTask(String cvsRoot, String password, String passFile, IAntScript script) {
        script.printTabs();
        script.print("<cvspass");
        script.printAttribute("cvsRoot", cvsRoot, true);
        script.printAttribute(KEY_PASSWORD, password, true);
        script.printAttribute("passfile", passFile, false);
        script.println("/>");
    }

    private void printAvailableTask(String property, String file, IAntScript script) {
        script.printTabs();
        script.print("<available");
        script.printAttribute("property", property, true);
        script.printAttribute("file", file, false);
        script.println("/>");
    }
}

