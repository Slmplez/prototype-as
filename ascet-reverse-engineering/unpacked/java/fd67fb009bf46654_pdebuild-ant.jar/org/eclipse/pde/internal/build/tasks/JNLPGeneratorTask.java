/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.Task
 */
package org.eclipse.pde.internal.build.tasks;

import java.util.Locale;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;
import org.eclipse.pde.internal.build.tasks.JNLPGenerator;

public class JNLPGeneratorTask
extends Task {
    private String feature;
    private String jnlp = null;
    private String codebase = null;
    private String j2se;
    private Locale locale = Locale.getDefault();
    private boolean generateOfflineAllowed = true;
    private String configs = null;

    public void setFeature(String value) {
        this.feature = value;
    }

    public void setJNLP(String value) {
        this.jnlp = value;
    }

    public void setCodebase(String value) {
        this.codebase = value;
    }

    public void setJ2SE(String value) {
        this.j2se = value;
    }

    public void setLocale(String nlsString) {
        String[] strings = nlsString.split("_");
        if (nlsString.charAt(0) == '$') {
            return;
        }
        if (strings != null) {
            switch (strings.length) {
                case 1: {
                    this.locale = new Locale(strings[0]);
                    break;
                }
                case 2: {
                    this.locale = new Locale(strings[0], strings[1]);
                    break;
                }
                case 3: {
                    this.locale = new Locale(strings[0], strings[1], strings[2]);
                }
            }
        }
    }

    public void execute() throws BuildException {
        JNLPGenerator generator = new JNLPGenerator(this.feature, this.jnlp, this.codebase, this.j2se, this.locale, this.generateOfflineAllowed, this.configs);
        generator.process();
    }

    public void setGenerateOfflineAllowed(String generateOfflineAllowed) {
        if (generateOfflineAllowed.equalsIgnoreCase("false")) {
            this.generateOfflineAllowed = false;
        }
        if (generateOfflineAllowed.equalsIgnoreCase("true")) {
            this.generateOfflineAllowed = false;
        }
    }

    public void setConfigInfo(String configs) {
        this.configs = configs;
    }
}

