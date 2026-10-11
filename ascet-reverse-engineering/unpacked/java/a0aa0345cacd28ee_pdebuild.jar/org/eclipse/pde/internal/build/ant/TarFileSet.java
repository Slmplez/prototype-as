/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.build.ant;

import org.eclipse.pde.internal.build.ant.AntScript;
import org.eclipse.pde.internal.build.ant.ZipFileSet;

public class TarFileSet
extends ZipFileSet {
    public TarFileSet(String dir, boolean file, String defaultexcludes, String includes, String includesfile, String excludes, String excludesfile, String prefix, String casesensitive, String permission) {
        super(dir, file, defaultexcludes, includes, includesfile, excludes, excludesfile, prefix, casesensitive, null);
    }

    protected void print(AntScript script) {
        script.printTab();
        script.print("<tarfileset");
        if (this.file) {
            script.printAttribute("file", this.dir, false);
        } else {
            script.printAttribute("dir", this.dir, false);
        }
        script.printAttribute("defaultexcludes", this.defaultexcludes, false);
        script.printAttribute("includes", this.includes, false);
        script.printAttribute("includesfile", this.includesfile, false);
        script.printAttribute("excludes", this.excludes, false);
        script.printAttribute("excludesfile", this.excludesfile, false);
        script.printAttribute("casesensitive", this.casesensitive, false);
        if (this.file) {
            script.printAttribute("fullpath", this.prefix, false);
        } else {
            script.printAttribute("prefix", this.prefix, false);
        }
        if (this.file) {
            script.printAttribute("filemode", this.permission, false);
        } else {
            script.printAttribute("dirmode", this.permission, false);
        }
        script.println("/>");
    }
}

