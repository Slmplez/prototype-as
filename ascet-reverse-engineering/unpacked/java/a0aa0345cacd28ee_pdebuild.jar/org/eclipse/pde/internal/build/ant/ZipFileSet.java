/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.pde.internal.build.ant;

import org.eclipse.core.runtime.Path;
import org.eclipse.pde.internal.build.ant.AntScript;
import org.eclipse.pde.internal.build.ant.FileSet;

public class ZipFileSet
extends FileSet {
    String prefix;
    boolean file;
    String permission;

    public ZipFileSet(String dir, boolean file, String defaultexcludes, String includes, String includesfile, String excludes, String excludesfile, String prefix, String casesensitive, String permission) {
        super(dir, defaultexcludes, includes, includesfile, excludes, excludesfile, casesensitive);
        this.prefix = prefix;
        this.file = file;
        this.permission = permission;
    }

    protected void print(AntScript script) {
        script.printTab();
        script.print("<zipfileset");
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
        if (this.prefixHasWildcards()) {
            String pre = new Path(this.prefix).removeLastSegments(1).toString();
            script.printAttribute("prefix", pre, false);
        } else if (this.file) {
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

    private boolean prefixHasWildcards() {
        if (this.prefix == null) {
            return false;
        }
        return this.prefix.indexOf(42) != -1 || this.prefix.indexOf(63) != -1;
    }
}

