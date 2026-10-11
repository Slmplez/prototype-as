/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.toolAPI;

import de.etas.cebra.Cebra;

public class ExeAPI {
    private String startup;
    private String parameter;
    private String command;
    private int status;
    private Process proz;
    private Runtime rt = Runtime.getRuntime();

    public ExeAPI(String command) {
        this(command, null, null);
    }

    public ExeAPI(String command, String parameter) {
        this(command, parameter, null);
    }

    public ExeAPI(String command, String parameter, String startup) {
        this.command = command;
        this.parameter = parameter;
        this.startup = startup;
        this.status = 1;
    }

    public void end() {
        try {
            this.proz.destroy();
        }
        catch (Exception e) {
            Cebra.println("Exception ending " + this.command + ". " + e);
        }
    }

    public void execute() {
        if (this.status != 1) {
            return;
        }
        try {
            if (this.parameter == null) {
                if (this.startup == null) {
                    this.proz = this.rt.exec(this.command);
                } else {
                    String[] env = new String[]{"user.dir=" + this.startup};
                    this.proz = this.rt.exec(this.command, env);
                }
            } else if (this.startup == null) {
                this.proz = this.rt.exec(String.valueOf(this.command) + " " + this.parameter);
            } else {
                String[] env = new String[]{"user.dir=" + this.startup};
                this.proz = this.rt.exec(String.valueOf(this.command) + " " + this.parameter, env);
            }
        }
        catch (Exception e) {
            Cebra.println("Exception in de.etas.cebra.ExeAPI.Execute()" + e);
        }
    }

    public int waitFor() {
        try {
            return this.proz.waitFor();
        }
        catch (Exception e) {
            Cebra.println("Exception waiting for " + this.command + ". " + e);
            return 0;
        }
    }
}

