/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.EventManager
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.preference;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Properties;
import org.eclipse.core.commands.common.EventManager;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.preference.IPersistentPreferenceStore;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.jface.util.SafeRunnable;

public class PreferenceStore
extends EventManager
implements IPersistentPreferenceStore {
    private Properties properties;
    private Properties defaultProperties = new Properties();
    private boolean dirty = false;
    private String filename;

    public PreferenceStore() {
        this.properties = new Properties(this.defaultProperties);
    }

    public PreferenceStore(String filename) {
        this();
        Assert.isNotNull((Object)filename);
        this.filename = filename;
    }

    public void addPropertyChangeListener(IPropertyChangeListener listener) {
        this.addListenerObject(listener);
    }

    public boolean contains(String name) {
        return this.properties.containsKey(name) || this.defaultProperties.containsKey(name);
    }

    public void firePropertyChangeEvent(String name, Object oldValue, Object newValue) {
        Object[] finalListeners = this.getListeners();
        if (!(finalListeners.length <= 0 || oldValue != null && oldValue.equals(newValue))) {
            final PropertyChangeEvent pe = new PropertyChangeEvent(this, name, oldValue, newValue);
            int i = 0;
            while (i < finalListeners.length) {
                final IPropertyChangeListener l = (IPropertyChangeListener)finalListeners[i];
                SafeRunnable.run(new SafeRunnable(JFaceResources.getString("PreferenceStore.changeError")){

                    public void run() {
                        l.propertyChange(pe);
                    }
                });
                ++i;
            }
        }
    }

    public boolean getBoolean(String name) {
        return this.getBoolean(this.properties, name);
    }

    private boolean getBoolean(Properties p, String name) {
        String value;
        String string = value = p != null ? p.getProperty(name) : null;
        if (value == null) {
            return false;
        }
        return value.equals("true");
    }

    public boolean getDefaultBoolean(String name) {
        return this.getBoolean(this.defaultProperties, name);
    }

    public double getDefaultDouble(String name) {
        return this.getDouble(this.defaultProperties, name);
    }

    public float getDefaultFloat(String name) {
        return this.getFloat(this.defaultProperties, name);
    }

    public int getDefaultInt(String name) {
        return this.getInt(this.defaultProperties, name);
    }

    public long getDefaultLong(String name) {
        return this.getLong(this.defaultProperties, name);
    }

    public String getDefaultString(String name) {
        return this.getString(this.defaultProperties, name);
    }

    public double getDouble(String name) {
        return this.getDouble(this.properties, name);
    }

    private double getDouble(Properties p, String name) {
        String value;
        String string = value = p != null ? p.getProperty(name) : null;
        if (value == null) {
            return 0.0;
        }
        double ival = 0.0;
        try {
            ival = new Double(value);
        }
        catch (NumberFormatException numberFormatException) {}
        return ival;
    }

    public float getFloat(String name) {
        return this.getFloat(this.properties, name);
    }

    private float getFloat(Properties p, String name) {
        String value;
        String string = value = p != null ? p.getProperty(name) : null;
        if (value == null) {
            return 0.0f;
        }
        float ival = 0.0f;
        try {
            ival = new Float(value).floatValue();
        }
        catch (NumberFormatException numberFormatException) {}
        return ival;
    }

    public int getInt(String name) {
        return this.getInt(this.properties, name);
    }

    private int getInt(Properties p, String name) {
        String value;
        String string = value = p != null ? p.getProperty(name) : null;
        if (value == null) {
            return 0;
        }
        int ival = 0;
        try {
            ival = Integer.parseInt(value);
        }
        catch (NumberFormatException numberFormatException) {}
        return ival;
    }

    public long getLong(String name) {
        return this.getLong(this.properties, name);
    }

    private long getLong(Properties p, String name) {
        String value;
        String string = value = p != null ? p.getProperty(name) : null;
        if (value == null) {
            return 0L;
        }
        long ival = 0L;
        try {
            ival = Long.parseLong(value);
        }
        catch (NumberFormatException numberFormatException) {}
        return ival;
    }

    public String getString(String name) {
        return this.getString(this.properties, name);
    }

    private String getString(Properties p, String name) {
        String value;
        String string = value = p != null ? p.getProperty(name) : null;
        if (value == null) {
            return "";
        }
        return value;
    }

    public boolean isDefault(String name) {
        return !this.properties.containsKey(name) && this.defaultProperties.containsKey(name);
    }

    public void list(PrintStream out) {
        this.properties.list(out);
    }

    public void list(PrintWriter out) {
        this.properties.list(out);
    }

    public void load() throws IOException {
        if (this.filename == null) {
            throw new IOException("File name not specified");
        }
        FileInputStream in = new FileInputStream(this.filename);
        this.load(in);
        in.close();
    }

    public void load(InputStream in) throws IOException {
        this.properties.load(in);
        this.dirty = false;
    }

    public boolean needsSaving() {
        return this.dirty;
    }

    public String[] preferenceNames() {
        ArrayList list = new ArrayList();
        Enumeration<?> it = this.properties.propertyNames();
        while (it.hasMoreElements()) {
            list.add(it.nextElement());
        }
        return list.toArray(new String[list.size()]);
    }

    public void putValue(String name, String value) {
        String oldValue = this.getString(name);
        if (oldValue == null || !oldValue.equals(value)) {
            this.setValue(this.properties, name, value);
            this.dirty = true;
        }
    }

    public void removePropertyChangeListener(IPropertyChangeListener listener) {
        this.removeListenerObject(listener);
    }

    public void save() throws IOException {
        if (this.filename == null) {
            throw new IOException("File name not specified");
        }
        FileOutputStream out = null;
        try {
            out = new FileOutputStream(this.filename);
            this.save(out, null);
        }
        finally {
            if (out != null) {
                out.close();
            }
        }
    }

    public void save(OutputStream out, String header) throws IOException {
        this.properties.store(out, header);
        this.dirty = false;
    }

    public void setDefault(String name, double value) {
        this.setValue(this.defaultProperties, name, value);
    }

    public void setDefault(String name, float value) {
        this.setValue(this.defaultProperties, name, value);
    }

    public void setDefault(String name, int value) {
        this.setValue(this.defaultProperties, name, value);
    }

    public void setDefault(String name, long value) {
        this.setValue(this.defaultProperties, name, value);
    }

    public void setDefault(String name, String value) {
        this.setValue(this.defaultProperties, name, value);
    }

    public void setDefault(String name, boolean value) {
        this.setValue(this.defaultProperties, name, value);
    }

    public void setFilename(String name) {
        this.filename = name;
    }

    public void setToDefault(String name) {
        if (!this.properties.containsKey(name)) {
            return;
        }
        Object oldValue = this.properties.get(name);
        this.properties.remove(name);
        this.dirty = true;
        Object newValue = null;
        if (this.defaultProperties != null) {
            newValue = this.defaultProperties.get(name);
        }
        this.firePropertyChangeEvent(name, oldValue, newValue);
    }

    public void setValue(String name, double value) {
        double oldValue = this.getDouble(name);
        if (oldValue != value) {
            this.setValue(this.properties, name, value);
            this.dirty = true;
            this.firePropertyChangeEvent(name, new Double(oldValue), new Double(value));
        }
    }

    public void setValue(String name, float value) {
        float oldValue = this.getFloat(name);
        if (oldValue != value) {
            this.setValue(this.properties, name, value);
            this.dirty = true;
            this.firePropertyChangeEvent(name, new Float(oldValue), new Float(value));
        }
    }

    public void setValue(String name, int value) {
        int oldValue = this.getInt(name);
        if (oldValue != value) {
            this.setValue(this.properties, name, value);
            this.dirty = true;
            this.firePropertyChangeEvent(name, new Integer(oldValue), new Integer(value));
        }
    }

    public void setValue(String name, long value) {
        long oldValue = this.getLong(name);
        if (oldValue != value) {
            this.setValue(this.properties, name, value);
            this.dirty = true;
            this.firePropertyChangeEvent(name, new Long(oldValue), new Long(value));
        }
    }

    public void setValue(String name, String value) {
        String oldValue = this.getString(name);
        if (oldValue == null || !oldValue.equals(value)) {
            this.setValue(this.properties, name, value);
            this.dirty = true;
            this.firePropertyChangeEvent(name, oldValue, value);
        }
    }

    public void setValue(String name, boolean value) {
        boolean oldValue = this.getBoolean(name);
        if (oldValue != value) {
            this.setValue(this.properties, name, value);
            this.dirty = true;
            this.firePropertyChangeEvent(name, oldValue ? Boolean.TRUE : Boolean.FALSE, value ? Boolean.TRUE : Boolean.FALSE);
        }
    }

    private void setValue(Properties p, String name, double value) {
        Assert.isTrue((p != null ? 1 : 0) != 0);
        p.put(name, Double.toString(value));
    }

    private void setValue(Properties p, String name, float value) {
        Assert.isTrue((p != null ? 1 : 0) != 0);
        p.put(name, Float.toString(value));
    }

    private void setValue(Properties p, String name, int value) {
        Assert.isTrue((p != null ? 1 : 0) != 0);
        p.put(name, Integer.toString(value));
    }

    private void setValue(Properties p, String name, long value) {
        Assert.isTrue((p != null ? 1 : 0) != 0);
        p.put(name, Long.toString(value));
    }

    private void setValue(Properties p, String name, String value) {
        Assert.isTrue((p != null && value != null ? 1 : 0) != 0);
        p.put(name, value);
    }

    private void setValue(Properties p, String name, boolean value) {
        Assert.isTrue((p != null ? 1 : 0) != 0);
        p.put(name, value ? "true" : "false");
    }
}

