/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.build.ant;

import org.eclipse.pde.internal.build.Utils;
import org.eclipse.pde.internal.build.ant.AntScript;
import org.eclipse.pde.internal.build.ant.ITask;

public class JavacTask
implements ITask {
    protected String classpathId;
    protected String bootclasspath;
    protected String destdir;
    protected String failonerror;
    protected String[] srcdir;
    protected String verbose;
    protected String includeAntRuntime;
    protected String fork;
    protected String debug;
    protected String source;
    protected String target;
    protected String compileArgs;
    protected String specificCompileArgs;
    protected String compileArgsFile;
    protected String encoding;
    protected String logExtension;
    protected String errorProperty;
    protected String[] excludes;
    protected String compilerAdapter;
    protected String warningProperties;
    private boolean adapterUseLog = false;
    private boolean adapterUseArgFile = false;

    public void print(AntScript script) {
        script.printTab();
        script.print("<javac");
        script.printAttribute("destdir", this.destdir, false);
        script.printAttribute("failonerror", this.failonerror, false);
        script.printAttribute("verbose", this.verbose, false);
        script.printAttribute("fork", this.fork, false);
        script.printAttribute("debug", this.debug, false);
        script.printAttribute("includeAntRuntime", this.includeAntRuntime, false);
        script.printAttribute("bootclasspath", this.bootclasspath, false);
        script.printAttribute("source", this.source, false);
        script.printAttribute("target", this.target, false);
        script.printAttribute("encoding", this.encoding, false);
        script.printAttribute("errorProperty", this.errorProperty, false);
        script.printAttribute("compiler", this.compilerAdapter, false);
        script.println(">");
        ++script.indent;
        if (this.compileArgs != null) {
            script.println("<compilerarg line=\"" + this.compileArgs + "\" compiler=\"" + Utils.getPropertyFormat("build.compiler") + "\"/>");
        }
        if (this.specificCompileArgs != null) {
            script.printTabs();
            script.print("<compilerarg");
            script.printAttribute("line", this.specificCompileArgs, true);
            script.printAttribute("compiler", this.compilerAdapter, false);
            script.println("/>");
        }
        script.println("<classpath refid=\"" + this.classpathId + "\" />");
        int i = 0;
        while (i < this.srcdir.length) {
            script.printTab();
            script.print("<src path=");
            script.printQuotes(this.srcdir[i]);
            script.println("/>");
            ++i;
        }
        i = 0;
        while (this.excludes != null && i < this.excludes.length) {
            script.printTab();
            script.print("<exclude ");
            script.printAttribute("name", this.excludes[i], true);
            script.println("/>");
            ++i;
        }
        if (this.warningProperties != null) {
            script.printTab();
            script.print("<compilerarg");
            script.printAttribute("line", "-properties '" + this.warningProperties + "'", true);
            if (this.compilerAdapter != null && this.adapterUseArgFile) {
                script.printAttribute("compiler", this.compilerAdapter, true);
            } else {
                script.printAttribute("compiler", "org.eclipse.jdt.core.JDTCompilerAdapter", true);
            }
            script.println("/>");
        }
        if (this.compileArgsFile != null) {
            script.printTabs();
            script.print("<compilerarg");
            script.printAttribute("value", "@" + this.compileArgsFile, true);
            if (this.compilerAdapter != null && this.adapterUseArgFile) {
                script.printAttribute("compiler", this.compilerAdapter, true);
            } else {
                script.printAttribute("compiler", "org.eclipse.jdt.core.JDTCompilerAdapter", true);
            }
            script.println("/>");
        }
        if (this.destdir != null) {
            script.printTabs();
            script.print("<compilerarg");
            script.printAttribute("line", "-log '" + this.destdir + this.logExtension + "'", true);
            if (this.compilerAdapter != null && this.adapterUseLog) {
                script.printAttribute("compiler", this.compilerAdapter, true);
            } else {
                script.printAttribute("compiler", "org.eclipse.jdt.core.JDTCompilerAdapter", true);
            }
            script.println("/>");
        }
        --script.indent;
        script.printEndTag("javac");
    }

    public void setClasspathId(String classpathId) {
        this.classpathId = classpathId;
    }

    public void setBootClasspath(String bootclasspath) {
        this.bootclasspath = bootclasspath;
    }

    public void setDestdir(String destdir) {
        this.destdir = destdir;
    }

    public void setFailOnError(String failonerror) {
        this.failonerror = failonerror;
    }

    public void setIncludeAntRuntime(String include) {
        this.includeAntRuntime = include;
    }

    public void setSrcdir(String[] srcdir) {
        this.srcdir = srcdir;
    }

    public void setExcludes(String[] excludes) {
        this.excludes = excludes;
    }

    public void setVerbose(String verbose) {
        this.verbose = verbose;
    }

    public void setFork(String fork) {
        this.fork = fork;
    }

    public void setDebug(String debug) {
        this.debug = debug;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public void setTarget(String target) {
        this.target = target;
    }

    public void setCompileArgs(String args) {
        this.compileArgs = args;
    }

    public void setSpecificCompileArgs(String args) {
        this.specificCompileArgs = args;
    }

    public void setEncoding(String encoding) {
        this.encoding = encoding;
    }

    public void setLogExtension(String extension) {
        this.logExtension = extension;
    }

    public void setCompileArgsFile(String file) {
        this.compileArgsFile = file;
    }

    public void setErrorProperty(String errorProperty) {
        this.errorProperty = errorProperty;
    }

    public void setCompilerAdapter(String compilerAdapter) {
        this.compilerAdapter = compilerAdapter;
    }

    public void setAdapterUseLog(boolean useLog) {
        this.adapterUseLog = useLog;
    }

    public void setAdapterArgFile(boolean useFile) {
        this.adapterUseArgFile = useFile;
    }

    public void setWarningProperties(String warningProperties) {
        this.warningProperties = warningProperties;
    }
}

