/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.build.ant;

import java.util.StringTokenizer;
import org.eclipse.pde.internal.build.ant.AntScript;

public class FileSet {
    protected String dir;
    protected String defaultexcludes;
    protected String includes;
    protected String includesfile;
    protected String excludes;
    protected String excludesfile;
    protected String casesensitive;

    public FileSet(String dir, String defaultexcludes, String includes, String includesfile, String excludes, String excludesfile, String casesensitive) {
        this.dir = dir;
        this.defaultexcludes = defaultexcludes;
        this.includes = includes;
        this.includesfile = includesfile;
        this.excludes = excludes;
        this.excludesfile = excludesfile;
        this.casesensitive = casesensitive;
    }

    protected void print(AntScript script) {
        script.printTab();
        script.print("<fileset");
        script.printAttribute("dir", this.dir, true);
        script.printAttribute("defaultexcludes", this.defaultexcludes, false);
        script.printAttribute("includesfile", this.includesfile, false);
        script.printAttribute("excludesfile", this.excludesfile, false);
        script.printAttribute("casesensitive", this.casesensitive, false);
        script.print(">");
        script.println();
        if (this.includes != null) {
            this.printNames(script, "include", this.includes);
        }
        if (this.excludes != null) {
            this.printNames(script, "exclude", this.excludes);
        }
        script.println("</fileset>");
    }

    protected void printAs(String name, AntScript script) {
        script.printTab();
        script.print("<" + name);
        script.printAttribute("dir", this.dir, true);
        script.printAttribute("defaultexcludes", this.defaultexcludes, false);
        script.printAttribute("includesfile", this.includesfile, false);
        script.printAttribute("excludesfile", this.excludesfile, false);
        script.printAttribute("casesensitive", this.casesensitive, false);
        script.printAttribute("includes", this.includes, false);
        script.printAttribute("excludes", this.excludes, false);
        script.println("/>");
    }

    private void printNames(AntScript script, String tag, String names) {
        ++script.indent;
        StringTokenizer tokenizer = new StringTokenizer(names, ",");
        while (tokenizer.hasMoreTokens()) {
            script.printTabs();
            script.print("<");
            script.print(tag);
            script.printAttribute("name", tokenizer.nextToken().trim(), true);
            script.print("/>");
            script.println();
        }
        --script.indent;
    }
}

