/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.build.tasks;

public class Config {
    public static String ANY = "*";
    private final String ws;
    private final String os;
    private final String arch;
    private static Config genericConfig;

    public Config(String os, String ws, String arch) {
        this.ws = ws;
        this.os = os;
        this.arch = arch;
    }

    public Config(String[] config) {
        this(config[0], config[1], config[2]);
    }

    public String getArch() {
        return this.arch;
    }

    public String getOs() {
        return this.os;
    }

    public String getWs() {
        return this.ws;
    }

    public boolean equals(Object config) {
        if (this == config) {
            return true;
        }
        if (!(config instanceof Config)) {
            return false;
        }
        Config aConfig = (Config)config;
        if (!this.os.equalsIgnoreCase(aConfig.os)) {
            return false;
        }
        if (!this.ws.equalsIgnoreCase(aConfig.ws)) {
            return false;
        }
        return this.arch.equalsIgnoreCase(aConfig.arch);
    }

    public int hashCode() {
        return this.os.hashCode() + this.ws.hashCode() + this.arch.hashCode();
    }

    public String toString() {
        return this.toString("_");
    }

    public String toString(String separator) {
        return String.valueOf(this.os) + separator + this.ws + separator + this.arch;
    }

    public String toStringReplacingAny(String separator, String value) {
        if (value == null) {
            return "";
        }
        String newOs = this.os;
        String newWs = this.ws;
        String newArch = this.arch;
        if (ANY.equals(this.os)) {
            newOs = value;
        }
        if (ANY.equals(this.ws)) {
            newWs = value;
        }
        if (ANY.equals(this.arch)) {
            newArch = value;
        }
        return String.valueOf(newOs) + separator + newWs + separator + newArch;
    }

    public static Config genericConfig() {
        if (genericConfig == null) {
            genericConfig = new Config(ANY, ANY, ANY);
        }
        return genericConfig;
    }
}

