/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.publisher;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;

public class FileSetDescriptor {
    private final String key;
    private String configSpec = null;
    private HashSet<File> fileset = new HashSet();
    private final ArrayList<String[]> permissions = new ArrayList();
    private String links = "";

    public FileSetDescriptor(String key, String configSpec) {
        this.key = key;
        this.configSpec = configSpec;
    }

    public void addFiles(File[] files) {
        this.fileset.addAll(Arrays.asList(files));
    }

    public void addPermissions(String[] property) {
        this.permissions.add(property);
    }

    public void setLinks(String property) {
        this.links = property;
    }

    public String getConfigSpec() {
        return this.configSpec;
    }

    public String getKey() {
        return this.key;
    }

    public String getLinks() {
        return this.links;
    }

    public String[][] getPermissions() {
        return (String[][])this.permissions.toArray((T[])new String[this.permissions.size()][]);
    }

    public File[] getFiles() {
        return this.fileset.toArray(new File[this.fileset.size()]);
    }

    public int size() {
        return this.fileset.size();
    }
}

