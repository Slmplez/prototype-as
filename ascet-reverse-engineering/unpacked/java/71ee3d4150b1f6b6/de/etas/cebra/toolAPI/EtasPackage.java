/*
 * Decompiled with CFR 0.152.
 */
package de.etas.cebra.toolAPI;

import de.etas.cebra.socket.ClientSender;
import de.etas.cebra.toolAPI.EtasPackage;
import de.etas.cebra.toolAPI.SmalltalkToolAPI;
import de.etas.util.EtasGeneralDll;
import java.io.File;
import java.io.FilenameFilter;

public abstract class EtasPackage
extends SmalltalkToolAPI {
    protected String toolName;

    public EtasPackage() {
    }

    public EtasPackage(ClientSender q) {
        super(q);
    }

    protected String getClassName() {
        String className = this.getClass().toString();
        int pos = className.lastIndexOf(".");
        return className.substring(pos + 1, className.length());
    }

    protected String getCOMClassName(String LibOrItem) {
        return String.valueOf(this.getCOMLibName(LibOrItem)) + this.getVersionString() + "." + this.getClassName();
    }

    protected String getCOMLibName(String LibOrItem) {
        File f = new File(LibOrItem);
        if (f.isDirectory()) {
            return this.getToolName(LibOrItem);
        }
        return LibOrItem;
    }

    protected String getToolName(String libNameOrPath) {
        if (this.toolName != null) {
            return this.toolName;
        }
        File f = new File(libNameOrPath);
        String fileName = !f.isDirectory() ? EtasGeneralDll.getCOMDLLPath(String.valueOf(libNameOrPath) + "." + this.getClassName()) : libNameOrPath;
        class BinFilter
        implements FilenameFilter {
            public boolean accept(File f, String name) {
                return name.endsWith(".bin");
            }

            BinFilter() {
            }
        }
        BinFilter filter = new BinFilter();
        while (fileName != null) {
            f = new File(fileName);
            String[] names = f.list(filter);
            if (names != null && names.length == 1) {
                this.toolName = names[0].substring(0, names[0].indexOf("."));
                return this.toolName;
            }
            fileName = f.getParent();
        }
        return null;
    }

    protected String getVersionString() {
        return "";
    }

    protected boolean isInitialized() {
        return this.toolName != null;
    }
}

