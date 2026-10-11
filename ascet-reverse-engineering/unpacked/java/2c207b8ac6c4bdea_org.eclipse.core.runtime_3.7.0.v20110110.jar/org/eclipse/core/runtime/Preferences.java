/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.preferences.PreferencesService
 *  org.eclipse.core.internal.preferences.PrefsMessages
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.runtime;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.EventListener;
import java.util.EventObject;
import java.util.Properties;
import org.eclipse.core.internal.preferences.PreferencesService;
import org.eclipse.core.internal.preferences.PrefsMessages;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.osgi.util.NLS;

public class Preferences {
    public static final boolean BOOLEAN_DEFAULT_DEFAULT = false;
    public static final double DOUBLE_DEFAULT_DEFAULT = 0.0;
    public static final float FLOAT_DEFAULT_DEFAULT = 0.0f;
    public static final int INT_DEFAULT_DEFAULT = 0;
    public static final long LONG_DEFAULT_DEFAULT = 0L;
    public static final String STRING_DEFAULT_DEFAULT = "";
    protected static final String TRUE = "true";
    protected static final String FALSE = "false";
    private static final String[] EMPTY_STRING_ARRAY = new String[0];
    public static final String PT_PREFERENCES = "preferences";
    protected ListenerList listeners = new ListenerList();
    private Properties properties;
    private Properties defaultProperties = new Properties();
    protected boolean dirty = false;

    public static void exportPreferences(IPath path) throws CoreException {
        File file = path.toFile();
        if (file.exists()) {
            file.delete();
        }
        file.getParentFile().mkdirs();
        PreferencesService service = PreferencesService.getDefault();
        OutputStream output = null;
        FileOutputStream fos = null;
        try {
            try {
                fos = new FileOutputStream(file);
                output = new BufferedOutputStream(fos);
                IEclipsePreferences node = (IEclipsePreferences)service.getRootNode().node("instance");
                service.exportPreferences(node, output, null);
                output.flush();
                fos.getFD().sync();
            }
            catch (IOException e) {
                String message = NLS.bind((String)PrefsMessages.preferences_errorWriting, (Object)file, (Object)e.getMessage());
                Status status = new Status(4, "org.eclipse.equinox.preferences", 4, message, (Throwable)e);
                throw new CoreException((IStatus)status);
            }
        }
        catch (Throwable throwable) {
            if (output != null) {
                try {
                    output.close();
                }
                catch (IOException iOException) {}
            }
            throw throwable;
        }
        if (output != null) {
            try {
                output.close();
            }
            catch (IOException iOException) {}
        }
    }

    public static void importPreferences(IPath path) throws CoreException {
        if (!path.toFile().exists()) {
            String msg = NLS.bind((String)PrefsMessages.preferences_fileNotFound, (Object)path.toOSString());
            throw new CoreException((IStatus)new Status(4, "org.eclipse.equinox.preferences", 1, msg, null));
        }
        PreferencesService service = PreferencesService.getDefault();
        InputStream input = null;
        try {
            try {
                input = new BufferedInputStream(new FileInputStream(path.toFile()));
                service.importPreferences(input);
            }
            catch (FileNotFoundException e) {
                String msg = NLS.bind((String)PrefsMessages.preferences_fileNotFound, (Object)path.toOSString());
                throw new CoreException((IStatus)new Status(4, "org.eclipse.equinox.preferences", 1, msg, (Throwable)e));
            }
        }
        catch (Throwable throwable) {
            if (input != null) {
                try {
                    input.close();
                }
                catch (IOException iOException) {}
            }
            throw throwable;
        }
        if (input != null) {
            try {
                input.close();
            }
            catch (IOException iOException) {}
        }
    }

    public static IStatus validatePreferenceVersions(IPath file) {
        PreferencesService service = PreferencesService.getDefault();
        return service.validateVersions(file);
    }

    public Preferences() {
        this.properties = new Properties(this.defaultProperties);
    }

    public void addPropertyChangeListener(IPropertyChangeListener listener) {
        this.listeners.add((Object)listener);
    }

    public void removePropertyChangeListener(IPropertyChangeListener listener) {
        this.listeners.remove((Object)listener);
    }

    public boolean contains(String name) {
        return this.properties.containsKey(name) || this.defaultProperties.containsKey(name);
    }

    protected void firePropertyChangeEvent(String name, Object oldValue, Object newValue) {
        if (name == null) {
            throw new IllegalArgumentException();
        }
        Object[] changeListeners = this.listeners.getListeners();
        if (changeListeners.length == 0) {
            return;
        }
        final PropertyChangeEvent pe = new PropertyChangeEvent(this, name, oldValue, newValue);
        int i = 0;
        while (i < changeListeners.length) {
            final IPropertyChangeListener l = (IPropertyChangeListener)changeListeners[i];
            ISafeRunnable job = new ISafeRunnable(){

                public void handleException(Throwable exception) {
                }

                public void run() throws Exception {
                    l.propertyChange(pe);
                }
            };
            SafeRunner.run((ISafeRunnable)job);
            ++i;
        }
    }

    public boolean getBoolean(String name) {
        String value = this.properties.getProperty(name);
        if (value == null) {
            return false;
        }
        return value.equals(TRUE);
    }

    public void setValue(String name, boolean value) {
        boolean defaultValue = this.getDefaultBoolean(name);
        boolean oldValue = this.getBoolean(name);
        if (value == defaultValue) {
            Object removed = this.properties.remove(name);
            if (removed != null) {
                this.dirty = true;
            }
        } else {
            this.properties.put(name, value ? TRUE : FALSE);
        }
        if (oldValue != value) {
            this.dirty = true;
            this.firePropertyChangeEvent(name, oldValue ? Boolean.TRUE : Boolean.FALSE, value ? Boolean.TRUE : Boolean.FALSE);
        }
    }

    public boolean getDefaultBoolean(String name) {
        String value = this.defaultProperties.getProperty(name);
        if (value == null) {
            return false;
        }
        return value.equals(TRUE);
    }

    public void setDefault(String name, boolean value) {
        this.defaultProperties.put(name, value ? TRUE : FALSE);
    }

    public double getDouble(String name) {
        return this.convertToDouble(this.properties.getProperty(name), 0.0);
    }

    public void setValue(String name, double value) {
        if (Double.isNaN(value)) {
            throw new IllegalArgumentException();
        }
        double defaultValue = this.getDefaultDouble(name);
        double oldValue = this.getDouble(name);
        if (value == defaultValue) {
            Object removed = this.properties.remove(name);
            if (removed != null) {
                this.dirty = true;
            }
        } else {
            this.properties.put(name, Double.toString(value));
        }
        if (oldValue != value) {
            this.dirty = true;
            this.firePropertyChangeEvent(name, new Double(oldValue), new Double(value));
        }
    }

    public double getDefaultDouble(String name) {
        return this.convertToDouble(this.defaultProperties.getProperty(name), 0.0);
    }

    public void setDefault(String name, double value) {
        if (Double.isNaN(value)) {
            throw new IllegalArgumentException();
        }
        this.defaultProperties.put(name, Double.toString(value));
    }

    private double convertToDouble(String rawPropertyValue, double defaultValue) {
        double result = defaultValue;
        if (rawPropertyValue != null) {
            try {
                result = Double.parseDouble(rawPropertyValue);
            }
            catch (NumberFormatException numberFormatException) {}
        }
        return result;
    }

    public float getFloat(String name) {
        return this.convertToFloat(this.properties.getProperty(name), 0.0f);
    }

    public void setValue(String name, float value) {
        if (Float.isNaN(value)) {
            throw new IllegalArgumentException();
        }
        float defaultValue = this.getDefaultFloat(name);
        float oldValue = this.getFloat(name);
        if (value == defaultValue) {
            Object removed = this.properties.remove(name);
            if (removed != null) {
                this.dirty = true;
            }
        } else {
            this.properties.put(name, Float.toString(value));
        }
        if (oldValue != value) {
            this.dirty = true;
            this.firePropertyChangeEvent(name, new Float(oldValue), new Float(value));
        }
    }

    public float getDefaultFloat(String name) {
        return this.convertToFloat(this.defaultProperties.getProperty(name), 0.0f);
    }

    public void setDefault(String name, float value) {
        if (Float.isNaN(value)) {
            throw new IllegalArgumentException();
        }
        this.defaultProperties.put(name, Float.toString(value));
    }

    private float convertToFloat(String rawPropertyValue, float defaultValue) {
        float result = defaultValue;
        if (rawPropertyValue != null) {
            try {
                result = Float.parseFloat(rawPropertyValue);
            }
            catch (NumberFormatException numberFormatException) {}
        }
        return result;
    }

    public int getInt(String name) {
        return this.convertToInt(this.properties.getProperty(name), 0);
    }

    public void setValue(String name, int value) {
        int defaultValue = this.getDefaultInt(name);
        int oldValue = this.getInt(name);
        if (value == defaultValue) {
            Object removed = this.properties.remove(name);
            if (removed != null) {
                this.dirty = true;
            }
        } else {
            this.properties.put(name, Integer.toString(value));
        }
        if (oldValue != value) {
            this.dirty = true;
            this.firePropertyChangeEvent(name, new Integer(oldValue), new Integer(value));
        }
    }

    public int getDefaultInt(String name) {
        return this.convertToInt(this.defaultProperties.getProperty(name), 0);
    }

    public void setDefault(String name, int value) {
        this.defaultProperties.put(name, Integer.toString(value));
    }

    private int convertToInt(String rawPropertyValue, int defaultValue) {
        int result = defaultValue;
        if (rawPropertyValue != null) {
            try {
                result = Integer.parseInt(rawPropertyValue);
            }
            catch (NumberFormatException numberFormatException) {}
        }
        return result;
    }

    public long getLong(String name) {
        return this.convertToLong(this.properties.getProperty(name), 0L);
    }

    public void setValue(String name, long value) {
        long defaultValue = this.getDefaultLong(name);
        long oldValue = this.getLong(name);
        if (value == defaultValue) {
            Object removed = this.properties.remove(name);
            if (removed != null) {
                this.dirty = true;
            }
        } else {
            this.properties.put(name, Long.toString(value));
        }
        if (oldValue != value) {
            this.dirty = true;
            this.firePropertyChangeEvent(name, new Long(oldValue), new Long(value));
        }
    }

    public long getDefaultLong(String name) {
        return this.convertToLong(this.defaultProperties.getProperty(name), 0L);
    }

    public void setDefault(String name, long value) {
        this.defaultProperties.put(name, Long.toString(value));
    }

    private long convertToLong(String rawPropertyValue, long defaultValue) {
        long result = defaultValue;
        if (rawPropertyValue != null) {
            try {
                result = Long.parseLong(rawPropertyValue);
            }
            catch (NumberFormatException numberFormatException) {}
        }
        return result;
    }

    public String getString(String name) {
        String value = this.properties.getProperty(name);
        return value != null ? value : STRING_DEFAULT_DEFAULT;
    }

    public void setValue(String name, String value) {
        if (value == null) {
            throw new IllegalArgumentException();
        }
        String defaultValue = this.getDefaultString(name);
        String oldValue = this.getString(name);
        if (value.equals(defaultValue)) {
            Object removed = this.properties.remove(name);
            if (removed != null) {
                this.dirty = true;
            }
        } else {
            this.properties.put(name, value);
        }
        if (!oldValue.equals(value)) {
            this.dirty = true;
            this.firePropertyChangeEvent(name, oldValue, value);
        }
    }

    public String getDefaultString(String name) {
        String value = this.defaultProperties.getProperty(name);
        return value != null ? value : STRING_DEFAULT_DEFAULT;
    }

    public void setDefault(String name, String value) {
        if (value == null) {
            throw new IllegalArgumentException();
        }
        this.defaultProperties.put(name, value);
    }

    public boolean isDefault(String name) {
        return !this.properties.containsKey(name);
    }

    public void setToDefault(String name) {
        Object oldPropertyValue = this.properties.remove(name);
        if (oldPropertyValue != null) {
            this.dirty = true;
        }
        String newValue = this.defaultProperties.getProperty(name, null);
        this.firePropertyChangeEvent(name, oldPropertyValue, newValue);
    }

    public String[] propertyNames() {
        return this.properties.keySet().toArray(EMPTY_STRING_ARRAY);
    }

    public String[] defaultPropertyNames() {
        return this.defaultProperties.keySet().toArray(EMPTY_STRING_ARRAY);
    }

    public boolean needsSaving() {
        return this.dirty;
    }

    public void store(OutputStream out, String header) throws IOException {
        this.properties.store(out, header);
        this.dirty = false;
    }

    public void load(InputStream in) throws IOException {
        this.properties.load(in);
        this.dirty = false;
    }

    public static interface IPropertyChangeListener
    extends EventListener {
        public void propertyChange(PropertyChangeEvent var1);
    }

    public static class PropertyChangeEvent
    extends EventObject {
        private static final long serialVersionUID = 1L;
        private String propertyName;
        private Object oldValue;
        private Object newValue;

        protected PropertyChangeEvent(Object source, String property, Object oldValue, Object newValue) {
            super(source);
            if (property == null) {
                throw new IllegalArgumentException();
            }
            this.propertyName = property;
            this.oldValue = oldValue;
            this.newValue = newValue;
        }

        public String getProperty() {
            return this.propertyName;
        }

        public Object getNewValue() {
            return this.newValue;
        }

        public Object getOldValue() {
            return this.oldValue;
        }
    }
}

