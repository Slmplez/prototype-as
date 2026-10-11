/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.URIUtil
 */
package org.eclipse.pde.internal.build.ant;

import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.URI;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.pde.build.IAntScript;
import org.eclipse.pde.internal.build.ant.FileSet;
import org.eclipse.pde.internal.build.ant.ITask;

public class AntScript
implements IAntScript {
    protected OutputStream out;
    protected PrintWriter output;
    protected final String XML_PROLOG = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>";
    protected int indent = 0;

    public AntScript(OutputStream out) throws IOException {
        this.out = out;
        this.output = new PrintWriter(new OutputStreamWriter(out, "UTF8"));
        this.output.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
    }

    public void close() {
        this.output.flush();
        this.output.close();
        try {
            this.out.close();
        }
        catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void printAntCallTask(String target, boolean inheritAll, Map params) {
        this.printTab();
        this.output.print("<antcall");
        this.printAttribute("target", target, true);
        if (!inheritAll) {
            this.printAttribute("inheritAll", "false", false);
        }
        if (params == null) {
            this.output.println("/>");
        } else {
            this.output.println(">");
            ++this.indent;
            Set entries = params.entrySet();
            Iterator iter = entries.iterator();
            while (iter.hasNext()) {
                Map.Entry entry = iter.next();
                this.printParam((String)entry.getKey(), (String)entry.getValue());
            }
            --this.indent;
            this.printTab();
            this.output.println("</antcall>");
        }
    }

    public void printP2PublishFeaturesAndBundles(String metadataRepository, String artifactRepository, FileSet[] bundles, FileSet[] features, String siteXML, String siteQualifier, String categoryDefintion, String categoryVersion, URI[] contextMetadata) {
        this.printTab();
        this.output.print("<eclipse.publish.featuresAndBundles");
        if (metadataRepository.equals(artifactRepository)) {
            this.printAttribute("repository", metadataRepository, true);
        } else {
            this.printAttribute("metadataRepository", metadataRepository, true);
            this.printAttribute("artifactRepository", artifactRepository, true);
        }
        this.printAttribute("site", siteXML, false);
        this.printAttribute("category", categoryDefintion, false);
        this.printAttribute("siteQualifier", siteQualifier, false);
        this.printAttribute("categoryVersion", categoryVersion, false);
        this.output.println(">");
        ++this.indent;
        int i = 0;
        while (i < features.length) {
            features[i].printAs("features", this);
            ++i;
        }
        i = 0;
        while (i < bundles.length) {
            bundles[i].printAs("bundles", this);
            ++i;
        }
        i = 0;
        while (contextMetadata != null && i < contextMetadata.length) {
            this.printTab();
            this.print("<contextRepository");
            this.printAttribute("metadata", "true", true);
            this.printAttribute("location", URIUtil.toUnencodedString((URI)contextMetadata[i]), true);
            this.println("/>");
            ++i;
        }
        --this.indent;
        this.printTab();
        this.output.println("</eclipse.publish.featuresAndBundles>");
    }

    public void printParallel(int threadCount, int threadsPerProcessor) {
        this.printTab();
        this.output.print("<parallel");
        if (threadCount > 0) {
            this.output.print(" threadCount='" + String.valueOf(threadCount) + "'");
        }
        if (threadsPerProcessor > 0) {
            this.output.print(" threadsPerProcessor='" + String.valueOf(threadsPerProcessor) + "'");
        }
        this.output.println(">");
        ++this.indent;
    }

    public void printEndParallel() {
        --this.indent;
        this.printTab();
        this.output.println("</parallel>");
    }

    public void printJarTask(String jarFile, FileSet[] files, String manifestAttribute) {
        this.printTab();
        this.output.print("<jar");
        this.printAttribute("destfile", jarFile, true);
        this.printAttribute("manifest", manifestAttribute, false);
        this.output.println(">");
        ++this.indent;
        int i = 0;
        while (i < files.length) {
            if (files[i] != null) {
                files[i].print(this);
            }
            ++i;
        }
        --this.indent;
        this.printTab();
        this.output.println("</jar>");
    }

    public void printJarTask(String jarFile, String basedir, String manifestAttribute) {
        this.printJarTask(jarFile, basedir, manifestAttribute, null);
    }

    public void printJarTask(String jarFile, String basedir, String manifestAttribute, String filesetManifest) {
        this.printTab();
        this.output.print("<jar");
        this.printAttribute("destfile", jarFile, true);
        this.printAttribute("basedir", basedir, false);
        this.printAttribute("manifest", manifestAttribute, false);
        this.printAttribute("filesetmanifest", filesetManifest, false);
        this.output.println("/>");
    }

    public void printJarTask(String jarFile, String baseDir, FileSet[] otherFiles, String manifestAttribute, String filesetManifest, String duplicate) {
        this.printTab();
        this.output.print("<jar");
        this.printAttribute("destfile", jarFile, true);
        this.printAttribute("basedir", baseDir, true);
        this.printAttribute("manifest", manifestAttribute, false);
        this.printAttribute("filesetmanifest", filesetManifest, false);
        this.printAttribute("duplicate", duplicate, false);
        this.output.println(">");
        ++this.indent;
        int i = 0;
        while (i < otherFiles.length) {
            if (otherFiles[i] != null) {
                otherFiles[i].print(this);
            }
            ++i;
        }
        --this.indent;
        this.output.println("</jar>");
    }

    public void printAvailableTask(String property, String file) {
        this.printTab();
        this.output.print("<available");
        this.printAttribute("property", property, false);
        this.printAttribute("file", file, false);
        this.output.println("/>");
    }

    public void printAvailableTask(String property, String file, String value) {
        this.printTab();
        this.output.print("<available");
        this.printAttribute("property", property, true);
        this.printAttribute("file", file, false);
        this.printAttribute("value", value, false);
        this.output.println("/>");
    }

    public void printAntTask(String antfile, String dir, String target, String outputParam, String inheritAll, Map properties) {
        this.printAntTask(antfile, dir, target, outputParam, inheritAll, properties, null);
    }

    public void printAntTask(String antfile, String dir, String target, String outputParam, String inheritAll, Map properties, Map references) {
        this.printTab();
        this.output.print("<ant");
        this.printAttribute("antfile", antfile, false);
        this.printAttribute("dir", dir, false);
        this.printAttribute("target", target, false);
        this.printAttribute("output", outputParam, false);
        this.printAttribute("inheritAll", inheritAll, false);
        if (properties == null && references == null) {
            this.output.println("/>");
        } else {
            Map.Entry entry;
            Iterator iter;
            Set entries;
            this.output.println(">");
            ++this.indent;
            if (properties != null) {
                entries = properties.entrySet();
                iter = entries.iterator();
                while (iter.hasNext()) {
                    entry = iter.next();
                    this.printProperty((String)entry.getKey(), (String)entry.getValue());
                }
            }
            if (references != null) {
                entries = references.entrySet();
                iter = entries.iterator();
                while (iter.hasNext()) {
                    entry = iter.next();
                    this.printTab();
                    this.print("<reference refid=\"" + (String)entry.getKey() + "\"");
                    if (entry.getValue() != null) {
                        this.print(" torefid=\"" + (String)entry.getValue() + "\"");
                    }
                    this.print("/>");
                    this.println();
                }
            }
            --this.indent;
            this.printTab();
            this.output.println("</ant>");
        }
    }

    public void printSubantTask(String antfile, String target, String buildpath, String failOnError, String inheritAll, Map properties, Map references) {
        this.printTab();
        this.output.print("<subant");
        this.printAttribute("antfile", antfile, false);
        this.printAttribute("target", target, false);
        this.printAttribute("failonerror", failOnError, false);
        this.printAttribute("buildpath", buildpath, false);
        this.printAttribute("inheritall", inheritAll, false);
        if (properties == null && references == null) {
            this.output.println("/>");
        } else {
            Map.Entry entry;
            Iterator iter;
            Set entries;
            this.output.println(">");
            ++this.indent;
            if (properties != null) {
                entries = properties.entrySet();
                iter = entries.iterator();
                while (iter.hasNext()) {
                    entry = iter.next();
                    this.printProperty((String)entry.getKey(), (String)entry.getValue());
                }
            }
            if (references != null) {
                entries = references.entrySet();
                iter = entries.iterator();
                while (iter.hasNext()) {
                    entry = iter.next();
                    this.printTab();
                    this.print("<reference refid=\"" + (String)entry.getKey() + "\"");
                    if (entry.getValue() != null) {
                        this.print(" torefid=\"" + (String)entry.getValue() + "\"");
                    }
                    this.print("/>");
                    this.println();
                }
            }
            --this.indent;
            this.printTab();
            this.output.println("</subant>");
        }
    }

    public void printZipTask(String zipfile, String basedir, boolean filesOnly, boolean update, FileSet[] fileSets) {
        this.printTab();
        this.output.print("<zip");
        this.printAttribute("destfile", zipfile, true);
        this.printAttribute("basedir", basedir, false);
        this.printAttribute("filesonly", filesOnly ? "true" : "false", true);
        this.printAttribute("whenempty", "skip", true);
        this.printAttribute("update", update ? "true" : "false", true);
        if (fileSets == null) {
            this.output.println("/>");
        } else {
            this.output.println(">");
            ++this.indent;
            int i = 0;
            while (i < fileSets.length) {
                if (fileSets[i] != null) {
                    fileSets[i].print(this);
                }
                ++i;
            }
            --this.indent;
            this.printTab();
            this.output.println("</zip>");
        }
    }

    public void printUnzipTask(String zipFile, String destDir, boolean overWrite, String includePatterns, String excludePatterns) {
        this.printTab();
        this.output.print("<unzip");
        this.printAttribute("src", zipFile, true);
        this.printAttribute("dest", destDir, true);
        this.printAttribute("overwrite", Boolean.toString(overWrite), true);
        if (includePatterns == null && excludePatterns == null) {
            this.output.println("/>");
        } else {
            this.output.println(">");
            ++this.indent;
            this.printTab();
            this.output.print("<patternset");
            this.printAttribute("includes", includePatterns, false);
            this.printAttribute("excludes", excludePatterns, false);
            this.output.println("/>");
            --this.indent;
            this.printTab();
            this.output.println("</unzip>");
        }
    }

    public void printTarTask(String zipfile, String basedir, boolean filesOnly, boolean update, FileSet[] fileSets) {
        this.printTab();
        this.output.print("<tar");
        this.printAttribute("destfile", zipfile, true);
        this.printAttribute("basedir", basedir, false);
        this.printAttribute("compression", "gzip", true);
        if (fileSets == null) {
            this.output.println("/>");
        } else {
            this.output.println(">");
            ++this.indent;
            int i = 0;
            while (i < fileSets.length) {
                if (fileSets[i] != null) {
                    fileSets[i].print(this);
                }
                ++i;
            }
            --this.indent;
            this.printTab();
            this.output.println("</tar>");
        }
    }

    protected void printArg(String line) {
        this.printArg(line, false);
    }

    protected void printArg(String line, boolean value) {
        this.printTab();
        this.output.print("<arg");
        if (value) {
            this.printAttribute("value", line, false);
        } else {
            this.printAttribute("line", line, false);
        }
        this.output.println("/>");
    }

    public void printString(String string) {
        this.printTab();
        this.output.println(AntScript.getEscaped(string));
    }

    public void printComment(String comment) {
        this.printTab();
        this.output.print("<!-- ");
        this.output.print(AntScript.getEscaped(comment));
        this.output.println(" -->");
    }

    public void printAttribute(String name, String value, boolean mandatory) {
        if (mandatory && value == null) {
            value = "";
        }
        if (value != null) {
            this.output.print(" ");
            this.output.print(AntScript.getEscaped(name));
            this.output.print("=");
            this.printQuotes(value);
        }
    }

    public void printCopyTask(String file, String todir, FileSet[] fileSets, boolean failOnError, boolean overwrite) {
        this.printTab();
        this.output.print("<copy");
        this.printAttribute("file", file, false);
        this.printAttribute("todir", todir, false);
        this.printAttribute("failonerror", failOnError ? "true" : "false", true);
        this.printAttribute("overwrite", overwrite ? "true" : "false", true);
        if (fileSets == null) {
            this.output.println("/>");
        } else {
            this.output.println(">");
            ++this.indent;
            int i = 0;
            while (i < fileSets.length) {
                if (fileSets[i] != null) {
                    fileSets[i].print(this);
                }
                ++i;
            }
            --this.indent;
            this.printTab();
            this.output.println("</copy>");
        }
    }

    public void printMoveTask(String todir, FileSet[] fileSets, boolean failOnError) {
        this.printTab();
        this.output.print("<move");
        this.printAttribute("todir", todir, false);
        this.printAttribute("failonerror", failOnError ? "true" : "false", true);
        this.output.println(">");
        ++this.indent;
        int i = 0;
        while (i < fileSets.length) {
            if (fileSets[i] != null) {
                fileSets[i].print(this);
            }
            ++i;
        }
        --this.indent;
        this.printTab();
        this.output.println("</move>");
    }

    public void printCopyFileTask(String file, String toFile, boolean overwrite) {
        this.printTab();
        this.output.print("<copy");
        this.printAttribute("file", file, false);
        this.printAttribute("tofile", toFile, false);
        this.printAttribute("overwrite", overwrite ? "true" : null, false);
        this.output.println("/>");
    }

    public void printDeleteTask(String dir, String file, FileSet[] fileSets) {
        this.printDeleteTask(dir, file, null, fileSets);
    }

    public void printDeleteTask(String dir, String file, String quiet, FileSet[] fileSets) {
        this.printTab();
        this.output.print("<delete");
        this.printAttribute("dir", dir, false);
        this.printAttribute("file", file, false);
        this.printAttribute("quiet", quiet, false);
        if (fileSets == null) {
            this.output.println("/>");
        } else {
            this.output.println(">");
            ++this.indent;
            int i = 0;
            while (i < fileSets.length) {
                if (fileSets[i] != null) {
                    fileSets[i].print(this);
                }
                ++i;
            }
            --this.indent;
            this.printTab();
            this.output.println("</delete>");
        }
    }

    public void printExecTask(String executable, String dir, List lineArgs, String os) {
        this.printExecTask(executable, dir, lineArgs, os, false);
    }

    public void printExecTask(String executable, String dir, List lineArgs, String os, boolean useValue) {
        this.printTab();
        this.output.print("<exec");
        this.printAttribute("executable", executable, true);
        this.printAttribute("dir", dir, false);
        this.printAttribute("os", os, false);
        if (lineArgs == null || lineArgs.size() == 0) {
            this.output.println("/>");
        } else {
            this.output.println(">");
            ++this.indent;
            int i = 0;
            while (i < lineArgs.size()) {
                String arg = (String)lineArgs.get(i);
                this.printArg(arg, useValue && arg.indexOf(32) == -1);
                ++i;
            }
            --this.indent;
            this.printTab();
            this.output.println("</exec>");
        }
    }

    public void printMkdirTask(String dir) {
        this.printTab();
        this.output.print("<mkdir");
        this.printAttribute("dir", dir, false);
        this.output.println("/>");
    }

    public void printBrandTask(String root, String icons, String name, String os) {
        this.printTab();
        this.print("<eclipse.brand");
        this.printAttribute("root", root, true);
        if (icons != null) {
            this.printAttribute("icons", icons, true);
        }
        this.printAttribute("name", name, true);
        this.printAttribute("os", os, true);
        this.println("/>");
    }

    public void printEchoTask(String message) {
        this.printEchoTask(null, message);
    }

    public void printEchoTask(String file, String message) {
        this.printEchoTask(file, message, null);
    }

    public void printEchoTask(String file, String message, String level) {
        this.printTab();
        this.output.print("<echo");
        this.printAttribute("level", level, false);
        this.printAttribute("file", file, false);
        this.printAttribute("message", message, true);
        this.output.println("/>");
    }

    public void printPathStructure(String tag, String id, List paths) {
        this.printTab();
        this.print("<" + AntScript.getEscaped(tag));
        if (id != null) {
            this.print(" id=\"" + AntScript.getEscaped(id) + "\"");
        }
        this.print(">");
        this.println();
        if (paths != null) {
            ++this.indent;
            Iterator iter = paths.iterator();
            while (iter.hasNext()) {
                Object path = iter.next();
                this.printTab();
                this.print("<pathelement");
                this.printAttribute("path", path.toString(), false);
                this.print("/>");
                this.println();
            }
            --this.indent;
        }
        this.printEndTag(tag);
    }

    protected void printParam(String name, String value) {
        this.printTab();
        this.output.print("<param");
        this.printAttribute("name", name, true);
        this.printAttribute("value", value, true);
        this.output.println("/>");
    }

    public void printProjectDeclaration(String name, String target, String basedir) {
        this.output.print("<project");
        this.printAttribute("name", name, false);
        this.printAttribute("default", target, true);
        this.printAttribute("basedir", basedir, false);
        this.output.println(">");
        ++this.indent;
    }

    public void printProjectEnd() {
        --this.indent;
        this.printEndTag("project");
    }

    public void printProperty(String name, String value) {
        this.printTab();
        this.output.print("<property");
        this.printAttribute("name", name, true);
        this.printAttribute("value", value, true);
        this.output.println("/>");
    }

    public void printPropertyRefid(String name, String ref) {
        this.printTab();
        this.output.print("<property");
        this.printAttribute("name", name, true);
        this.printAttribute("refid", ref, true);
        this.output.println("/>");
    }

    protected void printQuotes(String message) {
        this.output.print("\"");
        this.output.print(AntScript.getEscaped(message));
        this.output.print("\"");
    }

    public void printStartTag(String tag) {
        this.printTab();
        this.output.print("<");
        this.output.print(tag);
        this.output.println(">");
    }

    public void printStartTag(String tag, Map arguments) {
        this.printTab();
        this.output.print("<");
        this.output.print(tag);
        Set entries = arguments.entrySet();
        Iterator iter = entries.iterator();
        while (iter.hasNext()) {
            Map.Entry entry = iter.next();
            this.printAttribute((String)entry.getKey(), (String)entry.getValue(), true);
        }
        this.output.println(">");
    }

    public void incrementIdent() {
        ++this.indent;
    }

    public void decrementIdent() {
        --this.indent;
    }

    public void printElement(String tag, Map arguments) {
        this.printTab();
        this.output.print("<");
        this.output.print(tag);
        if (arguments != null) {
            Set entries = arguments.entrySet();
            Iterator iter = entries.iterator();
            while (iter.hasNext()) {
                Map.Entry entry = iter.next();
                this.printAttribute((String)entry.getKey(), (String)entry.getValue(), true);
            }
        }
        this.output.println("/>");
    }

    public void printEndTag(String tag) {
        this.printTab();
        this.output.print("</");
        this.output.print(tag);
        this.output.println(">");
    }

    public void printTab() {
        int i = 0;
        while (i < this.indent) {
            this.output.print("\t");
            ++i;
        }
    }

    public void println(String message) {
        this.printTab();
        this.output.println(message);
    }

    public void print(String message) {
        this.output.print(message);
    }

    public void println() {
        this.output.println();
    }

    public void print(ITask task) {
        task.print(this);
    }

    public void printTargetDeclaration(String name, String depends, String ifClause, String unlessClause, String description) {
        this.printTab();
        this.output.print("<target");
        this.printAttribute("name", name, true);
        this.printAttribute("depends", depends, false);
        this.printAttribute("if", ifClause, false);
        this.printAttribute("unless", unlessClause, false);
        this.printAttribute("description", description, false);
        this.output.println(">");
        ++this.indent;
    }

    public void printTargetEnd() {
        --this.indent;
        this.printEndTag("target");
    }

    public void printRefreshLocalTask(String resource, String depth) {
        this.printTab();
        this.output.print("<eclipse.refreshLocal");
        this.printAttribute("resource", resource, true);
        this.printAttribute("depth", depth, false);
        this.output.println("/>");
    }

    public void printChmod(String dir, String rights, String files) {
        this.printTab();
        this.output.print("<chmod perm=\"" + rights + "\" ");
        this.output.print("dir=\"" + AntScript.getEscaped(dir) + "\" ");
        this.output.print("includes=\"" + AntScript.getEscaped(files) + "\" /> ");
        this.output.println();
    }

    public void printGet(String source, String destination, String login, String password, boolean usetimestamp) {
        this.printTab();
        this.output.print("<get ");
        this.printAttribute("username", login, false);
        this.printAttribute("password", password, false);
        this.printAttribute("src", source, true);
        this.printAttribute("dest", destination, true);
        this.printAttribute("usetimestamp", usetimestamp ? "true" : null, false);
        this.output.println("/>");
    }

    public void printGZip(String source, String destination) {
        this.printTab();
        this.output.println("<gzip src=\"" + AntScript.getEscaped(source) + "\" zipfile=\"" + AntScript.getEscaped(destination) + "\"/>");
    }

    public void printConvertPathTask(String toConvert, String propertyName, boolean isEclipseResource) {
        this.printTab();
        this.output.print("<eclipse.convertPath");
        if (!isEclipseResource) {
            this.printAttribute("fileSystemPath", toConvert, true);
        } else {
            this.printAttribute("resourcePath", toConvert, true);
        }
        this.printAttribute("property", propertyName, true);
        this.output.println("/>");
    }

    public void printDirName(String property, String file) {
        this.printTab();
        this.output.print("<dirname");
        this.printAttribute("property", property, true);
        this.printAttribute("file", file, true);
        this.output.println("/>");
    }

    public void printConditionIsSet(String property, String value, String testProperty) {
        this.printConditionIsSet(property, value, testProperty, null);
    }

    public void printConditionIsSet(String property, String value, String testProperty, String elseValue) {
        this.printConditionStart(property, value, elseValue);
        this.printIsSet(testProperty);
        this.printEndCondition();
    }

    public void printConditionIsTrue(String property, String value, String testValue) {
        this.printConditionStart(property, value, null);
        this.printIsTrue(testValue);
        this.printEndCondition();
    }

    public void printConditionStart(String property, String value, String elseValue) {
        this.printTab();
        this.print("<condition");
        this.printAttribute("property", property, true);
        this.printAttribute("value", value, true);
        this.printAttribute("else", elseValue, false);
        this.println(">");
        ++this.indent;
    }

    public void printIsSet(String testProperty) {
        this.println("<isset property=\"" + testProperty + "\"/>");
    }

    public void printIsTrue(String testValue) {
        this.println("<istrue value=\"" + testValue + "\"/>");
    }

    public void printIsFalse(String testValue) {
        this.println("<isfalse value=\"" + testValue + "\"/>");
    }

    public void printEndCondition() {
        --this.indent;
        this.printEndTag("condition");
    }

    public void printMacroDef(String macroName, List attributes) {
        this.println("<macrodef name=\"" + macroName + "\">");
        ++this.indent;
        if (attributes != null) {
            Iterator iterator = attributes.iterator();
            while (iterator.hasNext()) {
                String attribute = (String)iterator.next();
                this.println("<attribute name=\"" + attribute + "\" />");
            }
        }
        this.println("<sequential>");
        ++this.indent;
    }

    public void printEndMacroDef() {
        --this.indent;
        this.println("</sequential>");
        --this.indent;
        this.println("</macrodef>");
    }

    public void printTabs() {
        this.printTab();
    }

    public void printTaskDef(String name, String classname) {
        this.printTabs();
        this.output.println("<taskdef name=\"" + name + "\" classname=\"" + classname + "\" />");
    }

    public static String getEscaped(String s) {
        StringBuffer result = new StringBuffer(s.length() + 10);
        int i = 0;
        while (i < s.length()) {
            AntScript.appendEscapedChar(result, s.charAt(i));
            ++i;
        }
        return result.toString();
    }

    private static void appendEscapedChar(StringBuffer buffer, char c) {
        buffer.append(AntScript.getReplacement(c));
    }

    private static String getReplacement(char c) {
        switch (c) {
            case '<': {
                return "&lt;";
            }
            case '>': {
                return "&gt;";
            }
            case '\"': {
                return "&quot;";
            }
            case '\'': {
                return "&apos;";
            }
            case '&': {
                return "&amp;";
            }
        }
        return String.valueOf(c);
    }
}

