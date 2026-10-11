/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.build;

import org.eclipse.pde.internal.build.Utils;

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

    public Config(String config) {
        this(Utils.getArrayFromStringWithBlank(config, ","));
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
        if (this.os == ANY) {
            newOs = value;
        }
        if (this.ws == ANY) {
            newWs = value;
        }
        if (this.arch == ANY) {
            newArch = value;
        }
        return String.valueOf(newOs) + separator + newWs + separator + newArch;
    }

    public String getPlatformFilter() {
        return "(& (osgi.ws=" + this.ws + ") (osgi.os=" + this.os + ") (osgi.arch=" + this.arch + "))";
    }

    public static Config genericConfig() {
        if (genericConfig == null) {
            genericConfig = new Config(ANY, ANY, ANY);
        }
        return genericConfig;
    }
}

