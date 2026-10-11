/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.EventManager
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.preference.PreferenceConverter
 *  org.eclipse.jface.resource.ColorRegistry
 *  org.eclipse.jface.resource.DataFormatException
 *  org.eclipse.jface.resource.FontRegistry
 *  org.eclipse.jface.resource.StringConverter
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.swt.graphics.FontData
 *  org.eclipse.swt.graphics.RGB
 */
package org.eclipse.ui.internal.themes;

import java.util.ResourceBundle;
import java.util.Set;
import org.eclipse.core.commands.common.EventManager;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.preference.PreferenceConverter;
import org.eclipse.jface.resource.ColorRegistry;
import org.eclipse.jface.resource.DataFormatException;
import org.eclipse.jface.resource.FontRegistry;
import org.eclipse.jface.resource.StringConverter;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.themes.CascadingColorRegistry;
import org.eclipse.ui.internal.themes.CascadingFontRegistry;
import org.eclipse.ui.internal.themes.CascadingMap;
import org.eclipse.ui.internal.themes.ColorDefinition;
import org.eclipse.ui.internal.themes.FontDefinition;
import org.eclipse.ui.internal.themes.IThemeDescriptor;
import org.eclipse.ui.internal.themes.ThemeElementHelper;
import org.eclipse.ui.internal.themes.ThemeRegistry;
import org.eclipse.ui.internal.themes.WorkbenchThemeManager;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.themes.ITheme;

public class Theme
extends EventManager
implements ITheme {
    private static final ResourceBundle RESOURCE_BUNDLE;
    private CascadingColorRegistry themeColorRegistry;
    private CascadingFontRegistry themeFontRegistry;
    private IThemeDescriptor descriptor;
    private IPropertyChangeListener themeListener;
    private CascadingMap dataMap;
    private ThemeRegistry themeRegistry = (ThemeRegistry)WorkbenchPlugin.getDefault().getThemeRegistry();
    private IPropertyChangeListener propertyListener;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.themes.Theme");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        RESOURCE_BUNDLE = ResourceBundle.getBundle(clazz.getName());
    }

    public Theme(IThemeDescriptor descriptor) {
        this.descriptor = descriptor;
        IWorkbench workbench = PlatformUI.getWorkbench();
        if (descriptor != null) {
            ITheme defaultTheme = workbench.getThemeManager().getTheme("org.eclipse.ui.defaultTheme");
            ColorDefinition[] colorDefinitions = this.descriptor.getColors();
            this.themeColorRegistry = new CascadingColorRegistry(defaultTheme.getColorRegistry());
            if (colorDefinitions.length > 0) {
                ThemeElementHelper.populateRegistry((ITheme)this, colorDefinitions, PrefUtil.getInternalPreferenceStore());
            }
            FontDefinition[] fontDefinitions = this.descriptor.getFonts();
            this.themeFontRegistry = new CascadingFontRegistry(defaultTheme.getFontRegistry());
            if (fontDefinitions.length > 0) {
                ThemeElementHelper.populateRegistry((ITheme)this, fontDefinitions, PrefUtil.getInternalPreferenceStore());
            }
            this.dataMap = new CascadingMap(((ThemeRegistry)WorkbenchPlugin.getDefault().getThemeRegistry()).getData(), descriptor.getData());
        }
        this.getColorRegistry().addListener(this.getCascadeListener());
        this.getFontRegistry().addListener(this.getCascadeListener());
        PrefUtil.getInternalPreferenceStore().addPropertyChangeListener(this.getPropertyListener());
    }

    private IPropertyChangeListener getPropertyListener() {
        if (this.propertyListener == null) {
            this.propertyListener = new IPropertyChangeListener(){

                public void propertyChange(PropertyChangeEvent event) {
                    String[] split = ThemeElementHelper.splitPropertyName(Theme.this, event.getProperty());
                    String key = split[1];
                    String theme = split[0];
                    if (key.equals("CURRENT_THEME_ID")) {
                        return;
                    }
                    try {
                        String thisTheme = Theme.this.getId();
                        if (Util.equals(thisTheme, theme)) {
                            if (Theme.this.getFontRegistry().hasValueFor(key)) {
                                FontData[] data = PreferenceConverter.basicGetFontData((String)((String)event.getNewValue()));
                                Theme.this.getFontRegistry().put(key, data);
                                this.processDefaultsTo(key, data);
                                return;
                            }
                            if (Theme.this.getColorRegistry().hasValueFor(key)) {
                                RGB rgb = StringConverter.asRGB((String)((String)event.getNewValue()));
                                Theme.this.getColorRegistry().put(key, rgb);
                                this.processDefaultsTo(key, rgb);
                                return;
                            }
                        }
                    }
                    catch (DataFormatException dataFormatException) {}
                }

                private void processDefaultsTo(String key, FontData[] fd) {
                    FontDefinition[] defs = WorkbenchPlugin.getDefault().getThemeRegistry().getFontsFor(Theme.this.getId());
                    int i = 0;
                    while (i < defs.length) {
                        IPreferenceStore store;
                        String defaultsTo = defs[i].getDefaultsTo();
                        if (defaultsTo != null && defaultsTo.equals(key) && (store = WorkbenchPlugin.getDefault().getPreferenceStore()).isDefault(ThemeElementHelper.createPreferenceKey(Theme.this, defs[i].getId()))) {
                            Theme.this.getFontRegistry().put(defs[i].getId(), fd);
                            this.processDefaultsTo(defs[i].getId(), fd);
                        }
                        ++i;
                    }
                }

                private void processDefaultsTo(String key, RGB rgb) {
                    ColorDefinition[] defs = WorkbenchPlugin.getDefault().getThemeRegistry().getColorsFor(Theme.this.getId());
                    int i = 0;
                    while (i < defs.length) {
                        IPreferenceStore store;
                        String defaultsTo = defs[i].getDefaultsTo();
                        if (defaultsTo != null && defaultsTo.equals(key) && (store = WorkbenchPlugin.getDefault().getPreferenceStore()).isDefault(ThemeElementHelper.createPreferenceKey(Theme.this, defs[i].getId()))) {
                            Theme.this.getColorRegistry().put(defs[i].getId(), rgb);
                            this.processDefaultsTo(defs[i].getId(), rgb);
                        }
                        ++i;
                    }
                }
            };
        }
        return this.propertyListener;
    }

    private IPropertyChangeListener getCascadeListener() {
        if (this.themeListener == null) {
            this.themeListener = new IPropertyChangeListener(){

                public void propertyChange(PropertyChangeEvent event) {
                    Theme.this.firePropertyChange(event);
                }
            };
        }
        return this.themeListener;
    }

    public ColorRegistry getColorRegistry() {
        if (this.themeColorRegistry != null) {
            return this.themeColorRegistry;
        }
        return WorkbenchThemeManager.getInstance().getDefaultThemeColorRegistry();
    }

    public FontRegistry getFontRegistry() {
        if (this.themeFontRegistry != null) {
            return this.themeFontRegistry;
        }
        return WorkbenchThemeManager.getInstance().getDefaultThemeFontRegistry();
    }

    public void dispose() {
        if (this.themeColorRegistry != null) {
            this.themeColorRegistry.removeListener(this.themeListener);
            this.themeColorRegistry.dispose();
        }
        if (this.themeFontRegistry != null) {
            this.themeFontRegistry.removeListener(this.themeListener);
            this.themeFontRegistry.dispose();
        }
        PrefUtil.getInternalPreferenceStore().removePropertyChangeListener(this.getPropertyListener());
    }

    public String getId() {
        return this.descriptor == null ? "org.eclipse.ui.defaultTheme" : this.descriptor.getId();
    }

    public void addPropertyChangeListener(IPropertyChangeListener listener) {
        this.addListenerObject(listener);
    }

    public void removePropertyChangeListener(IPropertyChangeListener listener) {
        this.removeListenerObject(listener);
    }

    private void firePropertyChange(PropertyChangeEvent event) {
        Object[] listeners = this.getListeners();
        int i = 0;
        while (i < listeners.length) {
            ((IPropertyChangeListener)listeners[i]).propertyChange(event);
            ++i;
        }
    }

    public String getLabel() {
        return this.descriptor == null ? RESOURCE_BUNDLE.getString("DefaultTheme.label") : this.descriptor.getName();
    }

    public String getString(String key) {
        if (this.dataMap != null) {
            return (String)this.dataMap.get(key);
        }
        return (String)this.themeRegistry.getData().get(key);
    }

    public Set keySet() {
        if (this.dataMap != null) {
            return this.dataMap.keySet();
        }
        return this.themeRegistry.getData().keySet();
    }

    public int getInt(String key) {
        String string = this.getString(key);
        if (string == null) {
            return 0;
        }
        try {
            return Integer.parseInt(string);
        }
        catch (NumberFormatException numberFormatException) {
            return 0;
        }
    }

    public boolean getBoolean(String key) {
        String string = this.getString(key);
        if (string == null) {
            return false;
        }
        return Boolean.valueOf(this.getString(key));
    }
}

