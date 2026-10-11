/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.BuildException
 *  org.apache.tools.ant.Task
 */
package org.eclipse.pde.internal.build.tasks;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.SequenceInputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.jar.Attributes;
import java.util.jar.Manifest;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.Task;

public class ManifestModifier
extends Task {
    private String manifestLocation;
    private final Map newValues = new HashMap();
    private static String DELIM = "#|";
    private Manifest manifest = null;
    private boolean contentChanged = false;

    public void setKeyValue(String values) {
        StringTokenizer tokenizer = new StringTokenizer(values, DELIM, false);
        while (tokenizer.hasMoreElements()) {
            String key = tokenizer.nextToken();
            String value = tokenizer.nextToken();
            if (value.equals("null")) {
                value = null;
            }
            this.newValues.put(key, value);
        }
    }

    public void execute() {
        this.loadManifest();
        this.applyChanges();
        this.writeManifest();
    }

    private void writeManifest() {
        if (!this.contentChanged) {
            return;
        }
        BufferedOutputStream os = null;
        try {
            os = new BufferedOutputStream(new FileOutputStream(this.manifestLocation));
            try {
                this.manifest.write(os);
                ((OutputStream)os).write(new byte[]{10});
            }
            finally {
                ((OutputStream)os).close();
            }
        }
        catch (IOException iOException) {
            throw new BuildException("Problem writing the content of the manifest : " + this.manifestLocation);
        }
    }

    private void applyChanges() {
        Iterator iter = this.newValues.entrySet().iterator();
        while (iter.hasNext()) {
            Map.Entry entry = iter.next();
            String key = (String)entry.getKey();
            String value = (String)entry.getValue();
            if (value == null) {
                this.removeAttribute(key);
                continue;
            }
            this.changeValue(key, value);
        }
        if (!this.manifest.getMainAttributes().containsKey(Attributes.Name.MANIFEST_VERSION)) {
            this.contentChanged = true;
            this.manifest.getMainAttributes().put(Attributes.Name.MANIFEST_VERSION, "1.0");
        }
    }

    private void loadManifest() {
        try {
            SequenceInputStream is = new SequenceInputStream(new BufferedInputStream(new FileInputStream(this.manifestLocation)), new ByteArrayInputStream(new byte[]{10}));
            try {
                this.manifest = new Manifest(is);
            }
            finally {
                ((InputStream)is).close();
            }
        }
        catch (IOException iOException) {
            throw new BuildException("Problem reading the content of the manifest : " + this.manifestLocation);
        }
    }

    private void changeValue(String key, String value) {
        Attributes attributes = this.manifest.getMainAttributes();
        if (attributes.containsKey(key) && attributes.getValue(key).equals(value)) {
            return;
        }
        this.contentChanged = true;
        attributes.put(new Attributes.Name(key), value);
    }

    private void removeAttribute(String key) {
        this.contentChanged = true;
        this.manifest.getMainAttributes().remove(new Attributes.Name(key));
    }

    public void setManifestLocation(String path) {
        this.manifestLocation = path;
    }
}

