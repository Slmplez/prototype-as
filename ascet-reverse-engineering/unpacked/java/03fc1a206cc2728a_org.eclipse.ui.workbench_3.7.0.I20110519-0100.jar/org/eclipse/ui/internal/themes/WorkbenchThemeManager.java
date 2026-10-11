/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.common.EventManager
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.jface.resource.ColorRegistry
 *  org.eclipse.jface.resource.FontRegistry
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.swt.graphics.FontData
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 */
package org.eclipse.ui.internal.themes;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.commands.common.EventManager;
import org.eclipse.core.runtime.Platform;
import org.eclipse.jface.resource.ColorRegistry;
import org.eclipse.jface.resource.FontRegistry;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.internal.themes.ColorDefinition;
import org.eclipse.ui.internal.themes.IThemeDescriptor;
import org.eclipse.ui.internal.themes.IThemeRegistry;
import org.eclipse.ui.internal.themes.Theme;
import org.eclipse.ui.internal.themes.ThemeElementHelper;
import org.eclipse.ui.internal.themes.ThemeRegistry;
import org.eclipse.ui.internal.themes.ThemeRegistryReader;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.statushandlers.StatusManager;
import org.eclipse.ui.themes.ITheme;
import org.eclipse.ui.themes.IThemeManager;

public class WorkbenchThemeManager
extends EventManager
implements IThemeManager {
    private static final String SYSTEM_DEFAULT_THEME = "org.eclipse.ui.ide.systemDefault";
    private static WorkbenchThemeManager instance;
    private ITheme currentTheme;
    private IPropertyChangeListener currentThemeListener = new IPropertyChangeListener(){

        public void propertyChange(PropertyChangeEvent event) {
            WorkbenchThemeManager.this.firePropertyChange(event);
            if (event.getSource() instanceof FontRegistry) {
                JFaceResources.getFontRegistry().put(event.getProperty(), (FontData[])event.getNewValue());
            } else if (event.getSource() instanceof ColorRegistry) {
                JFaceResources.getColorRegistry().put(event.getProperty(), (RGB)event.getNewValue());
            }
        }
    };
    private ColorRegistry defaultThemeColorRegistry;
    private FontRegistry defaultThemeFontRegistry;
    private IThemeRegistry themeRegistry;
    private Map themes = new HashMap(7);

    public static synchronized WorkbenchThemeManager getInstance() {
        if (instance == null) {
            instance = new WorkbenchThemeManager();
            instance.getCurrentTheme();
        }
        return instance;
    }

    private WorkbenchThemeManager() {
        this.defaultThemeColorRegistry = new ColorRegistry(PlatformUI.getWorkbench().getDisplay());
        this.defaultThemeFontRegistry = new FontRegistry(PlatformUI.getWorkbench().getDisplay());
        FontRegistry jfaceFonts = JFaceResources.getFontRegistry();
        Iterator i = jfaceFonts.getKeySet().iterator();
        while (i.hasNext()) {
            String key = (String)i.next();
            this.defaultThemeFontRegistry.put(key, jfaceFonts.getFontData(key));
        }
        String themeId = PrefUtil.getAPIPreferenceStore().getDefaultString("CURRENT_THEME_ID");
        if (themeId.length() == 0) {
            themeId = "org.eclipse.ui.defaultTheme";
        }
        if (PlatformUI.getWorkbench().getDisplay() != null) {
            final boolean[] highContrast = new boolean[1];
            PlatformUI.getWorkbench().getDisplay().syncExec(new Runnable(){

                public void run() {
                    highContrast[0] = Display.getCurrent().getHighContrast();
                    Display.getCurrent().addListener(39, new Listener(this){
                        final /* synthetic */ 2 this$1;
                        {
                            this.this$1 = var1_1;
                        }

                        public void handleEvent(Event event) {
                            WorkbenchThemeManager.access$0(2.access$0(this.this$1));
                        }
                    });
                }

                static /* synthetic */ WorkbenchThemeManager access$0(2 var0) {
                    return var0.WorkbenchThemeManager.this;
                }
            });
            if (highContrast[0]) {
                themeId = SYSTEM_DEFAULT_THEME;
            }
        }
        PrefUtil.getAPIPreferenceStore().setDefault("CURRENT_THEME_ID", themeId);
    }

    private void updateThemes() {
        ThemeRegistryReader reader = new ThemeRegistryReader();
        reader.readThemes(Platform.getExtensionRegistry(), (ThemeRegistry)this.getThemeRegistry());
        ThemeElementHelper.populateRegistry(this.getTheme("org.eclipse.ui.defaultTheme"), this.getThemeRegistry().getColors(), PrefUtil.getInternalPreferenceStore());
        IThemeDescriptor[] themeDescriptors = this.getThemeRegistry().getThemes();
        int i = 0;
        while (i < themeDescriptors.length) {
            ColorDefinition[] colorDefinitions;
            IThemeDescriptor themeDescriptor = themeDescriptors[i];
            ITheme theme = (ITheme)this.themes.get(themeDescriptor);
            if (theme != null && (colorDefinitions = themeDescriptor.getColors()).length > 0) {
                ThemeElementHelper.populateRegistry(theme, colorDefinitions, PrefUtil.getInternalPreferenceStore());
            }
            ++i;
        }
    }

    public void addPropertyChangeListener(IPropertyChangeListener listener) {
        this.addListenerObject(listener);
    }

    public void dispose() {
        Iterator i = this.themes.values().iterator();
        while (i.hasNext()) {
            ITheme theme = (ITheme)i.next();
            theme.removePropertyChangeListener(this.currentThemeListener);
            theme.dispose();
        }
        this.themes.clear();
    }

    private boolean doSetCurrentTheme(String id) {
        ITheme oldTheme = this.currentTheme;
        ITheme newTheme = this.getTheme(id);
        if (oldTheme != newTheme && newTheme != null) {
            this.currentTheme = newTheme;
            return true;
        }
        return false;
    }

    protected void firePropertyChange(PropertyChangeEvent event) {
        Object[] listeners = this.getListeners();
        int i = 0;
        while (i < listeners.length) {
            ((IPropertyChangeListener)listeners[i]).propertyChange(event);
            ++i;
        }
    }

    protected void firePropertyChange(String changeId, ITheme oldTheme, ITheme newTheme) {
        PropertyChangeEvent event = new PropertyChangeEvent((Object)this, changeId, (Object)oldTheme, (Object)newTheme);
        this.firePropertyChange(event);
    }

    public ITheme getCurrentTheme() {
        if (this.currentTheme == null) {
            String themeId = PrefUtil.getAPIPreferenceStore().getString("CURRENT_THEME_ID");
            if (themeId == null) {
                this.setCurrentTheme("org.eclipse.ui.defaultTheme");
            } else {
                this.setCurrentTheme(themeId);
                if (this.currentTheme == null) {
                    this.setCurrentTheme("org.eclipse.ui.defaultTheme");
                    StatusManager.getManager().handle(StatusUtil.newStatus("org.eclipse.ui", "Could not restore current theme: " + themeId, null));
                }
            }
        }
        return this.currentTheme;
    }

    public ColorRegistry getDefaultThemeColorRegistry() {
        return this.defaultThemeColorRegistry;
    }

    public FontRegistry getDefaultThemeFontRegistry() {
        return this.defaultThemeFontRegistry;
    }

    private ITheme getTheme(IThemeDescriptor td) {
        ITheme theme = (ITheme)this.themes.get(td);
        if (theme == null) {
            theme = new Theme(td);
            this.themes.put(td, theme);
        }
        return theme;
    }

    public ITheme getTheme(String id) {
        if (id.equals("org.eclipse.ui.defaultTheme")) {
            return this.getTheme((IThemeDescriptor)null);
        }
        IThemeDescriptor td = this.getThemeRegistry().findTheme(id);
        if (td == null) {
            return null;
        }
        return this.getTheme(td);
    }

    private IThemeRegistry getThemeRegistry() {
        if (this.themeRegistry == null) {
            this.themeRegistry = WorkbenchPlugin.getDefault().getThemeRegistry();
        }
        return this.themeRegistry;
    }

    public void removePropertyChangeListener(IPropertyChangeListener listener) {
        this.removeListenerObject(listener);
    }

    public void setCurrentTheme(String id) {
        ITheme oldTheme = this.currentTheme;
        if (WorkbenchThemeManager.getInstance().doSetCurrentTheme(id)) {
            String key;
            this.firePropertyChange("CHANGE_CURRENT_THEME", oldTheme, this.getCurrentTheme());
            if (oldTheme != null) {
                oldTheme.removePropertyChangeListener(this.currentThemeListener);
            }
            this.currentTheme.addPropertyChangeListener(this.currentThemeListener);
            if (!PrefUtil.getAPIPreferenceStore().getString("CURRENT_THEME_ID").equals(id)) {
                PrefUtil.getAPIPreferenceStore().setValue("CURRENT_THEME_ID", id);
                PrefUtil.saveAPIPrefs();
            }
            ColorRegistry jfaceColors = JFaceResources.getColorRegistry();
            ColorRegistry themeColors = this.currentTheme.getColorRegistry();
            Iterator i = themeColors.getKeySet().iterator();
            while (i.hasNext()) {
                key = (String)i.next();
                jfaceColors.put(key, themeColors.getRGB(key));
            }
            FontRegistry jfaceFonts = JFaceResources.getFontRegistry();
            FontRegistry themeFonts = this.currentTheme.getFontRegistry();
            i = themeFonts.getKeySet().iterator();
            while (i.hasNext()) {
                key = (String)i.next();
                jfaceFonts.put(key, themeFonts.getFontData(key));
            }
        }
    }

    static /* synthetic */ void access$0(WorkbenchThemeManager workbenchThemeManager) {
        workbenchThemeManager.updateThemes();
    }
}

