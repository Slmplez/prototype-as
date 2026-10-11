/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.etas.ascet.importer.a2a.config.ConverterConfig
 *  com.etas.ascet.importer.a2a.config.IConfig
 */
package com.etas.ascet.importer.a2a.ui;

import com.etas.ascet.importer.a2a.config.ConverterConfig;
import com.etas.ascet.importer.a2a.config.IConfig;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class ConverterGUIModel
extends ConverterConfig
implements IConfig {
    private static ConverterGUIModel aINSTANCE;
    private List<IA2AModelChangeListener> listener = new ArrayList<IA2AModelChangeListener>();

    public static ConverterGUIModel getInstance() {
        if (aINSTANCE == null) {
            aINSTANCE = new ConverterGUIModel();
        }
        return aINSTANCE;
    }

    public boolean existsFile(String f) {
        for (File file : this.getInputFiles()) {
            if (!file.getAbsolutePath().equalsIgnoreCase(f)) continue;
            return true;
        }
        return false;
    }

    public void addInputFile(File f) {
        if (this.getInputFiles().contains(f)) {
            return;
        }
        super.addInputFile(f);
        this.notifyAdded(f);
    }

    public void removeFile(File f) {
        this.getInputFiles().remove(f);
        this.notifyRemoved(f);
    }

    public void removeAllFiles() {
        Object[] files = this.getInputFiles().toArray();
        this.getInputFiles().clear();
        Object[] objectArray = files;
        int n = files.length;
        int n2 = 0;
        while (n2 < n) {
            Object f = objectArray[n2];
            this.notifyRemoved((File)f);
            ++n2;
        }
    }

    private void notifyAdded(File f) {
        for (IA2AModelChangeListener l : this.listener) {
            l.addedInputFile(f);
        }
    }

    private void notifyRemoved(File f) {
        for (IA2AModelChangeListener l : this.listener) {
            l.removedInputFile(f);
        }
    }

    public void addChangeListener(IA2AModelChangeListener obj) {
        this.listener.add(obj);
    }

    public void removeChangeListener(IA2AModelChangeListener obj) {
        for (IA2AModelChangeListener l : this.listener) {
            if (l != obj) continue;
            this.listener.remove(obj);
        }
    }

    public static interface IA2AModelChangeListener {
        public void addedInputFile(File var1);

        public void removedInputFile(File var1);
    }
}

