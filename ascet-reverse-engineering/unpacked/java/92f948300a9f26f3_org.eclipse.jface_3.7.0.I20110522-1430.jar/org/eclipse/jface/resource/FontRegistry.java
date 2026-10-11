/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.SWT
 *  org.eclipse.swt.SWTException
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.FontData
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.resource;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.Set;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.resource.DataFormatException;
import org.eclipse.jface.resource.FontDescriptor;
import org.eclipse.jface.resource.ResourceRegistry;
import org.eclipse.jface.resource.StringConverter;
import org.eclipse.jface.util.Policy;
import org.eclipse.jface.util.Util;
import org.eclipse.swt.SWT;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.widgets.Display;

public class FontRegistry
extends ResourceRegistry {
    private Map stringToFontRecord = new HashMap(7);
    private Map stringToFontData = new HashMap(7);
    private List staleFonts = new ArrayList();
    protected Runnable displayRunnable = new Runnable(){

        public void run() {
            FontRegistry.this.clearCaches();
        }
    };
    private boolean displayDisposeHooked;
    private final boolean cleanOnDisplayDisposal;

    public FontRegistry() {
        this(Display.getCurrent(), true);
    }

    public FontRegistry(String location, ClassLoader loader) throws MissingResourceException {
        Display display = Display.getCurrent();
        Assert.isNotNull((Object)display);
        this.readResourceBundle(location);
        this.cleanOnDisplayDisposal = true;
        this.hookDisplayDispose(display);
    }

    public FontRegistry(String location) throws MissingResourceException {
        this(location, null);
    }

    private void readResourceBundle(String location) {
        block7: {
            String osname = System.getProperty("os.name").trim();
            String wsname = Util.getWS();
            osname = StringConverter.removeWhiteSpaces(osname).toLowerCase();
            wsname = StringConverter.removeWhiteSpaces(wsname).toLowerCase();
            String OSLocation = location;
            String WSLocation = location;
            ResourceBundle bundle = null;
            if (osname != null) {
                OSLocation = String.valueOf(location) + "_" + osname;
                if (wsname != null) {
                    WSLocation = String.valueOf(OSLocation) + "_" + wsname;
                }
            }
            try {
                bundle = ResourceBundle.getBundle(WSLocation);
                this.readResourceBundle(bundle, WSLocation);
            }
            catch (MissingResourceException missingResourceException) {
                try {
                    bundle = ResourceBundle.getBundle(OSLocation);
                    this.readResourceBundle(bundle, WSLocation);
                }
                catch (MissingResourceException osException) {
                    if (location != OSLocation) {
                        bundle = ResourceBundle.getBundle(location);
                        this.readResourceBundle(bundle, WSLocation);
                        break block7;
                    }
                    throw osException;
                }
            }
        }
    }

    public FontRegistry(Display display) {
        this(display, true);
    }

    public FontRegistry(Display display, boolean cleanOnDisplayDisposal) {
        Assert.isNotNull((Object)display);
        this.cleanOnDisplayDisposal = cleanOnDisplayDisposal;
        if (cleanOnDisplayDisposal) {
            this.hookDisplayDispose(display);
        }
    }

    public FontData bestData(FontData[] fonts, Display display) {
        int i = 0;
        while (i < fonts.length) {
            FontData fd = fonts[i];
            if (fd == null) break;
            FontData[] fixedFonts = display.getFontList(fd.getName(), false);
            if (this.isFixedFont(fixedFonts, fd)) {
                return fd;
            }
            FontData[] scalableFonts = display.getFontList(fd.getName(), true);
            if (scalableFonts.length > 0) {
                return fd;
            }
            ++i;
        }
        if (fonts.length > 0) {
            return fonts[0];
        }
        return null;
    }

    public FontData[] bestDataArray(FontData[] fonts, Display display) {
        FontData bestData = this.bestData(fonts, display);
        if (bestData == null) {
            return null;
        }
        FontData[] datas = new FontData[]{bestData};
        return datas;
    }

    public FontData[] filterData(FontData[] fonts, Display display) {
        ArrayList<FontData> good = new ArrayList<FontData>(fonts.length);
        int i = 0;
        while (i < fonts.length) {
            FontData fd = fonts[i];
            if (fd != null) {
                FontData[] scalableFonts;
                FontData[] fixedFonts = display.getFontList(fd.getName(), false);
                if (this.isFixedFont(fixedFonts, fd)) {
                    good.add(fd);
                }
                if ((scalableFonts = display.getFontList(fd.getName(), true)).length > 0) {
                    good.add(fd);
                }
            }
            ++i;
        }
        if (good.isEmpty() && fonts.length > 0) {
            good.add(fonts[0]);
        } else if (fonts.length == 0) {
            return null;
        }
        return good.toArray(new FontData[good.size()]);
    }

    private FontRecord createFont(String symbolicName, FontData[] fonts) {
        FontData[] validData;
        Display display = Display.getCurrent();
        if (display == null) {
            return null;
        }
        if (this.cleanOnDisplayDisposal && !this.displayDisposeHooked) {
            this.hookDisplayDispose(display);
        }
        if ((validData = this.filterData(fonts, display)).length == 0) {
            return null;
        }
        this.put(symbolicName, validData, false);
        Font newFont = new Font((Device)display, validData);
        return new FontRecord(newFont, validData);
    }

    Font calculateDefaultFont() {
        Display current = Display.getCurrent();
        if (current == null) {
            SWT.error((int)22);
        }
        return new Font((Device)current, current.getSystemFont().getFontData());
    }

    public Font defaultFont() {
        return this.defaultFontRecord().getBaseFont();
    }

    public FontDescriptor getDescriptor(String symbolicName) {
        Assert.isNotNull((Object)symbolicName);
        return FontDescriptor.createFrom(this.getFontData(symbolicName));
    }

    private FontRecord defaultFontRecord() {
        FontRecord record = (FontRecord)this.stringToFontRecord.get("org.eclipse.jface.defaultfont");
        if (record == null) {
            Font defaultFont = this.calculateDefaultFont();
            record = this.createFont("org.eclipse.jface.defaultfont", defaultFont.getFontData());
            defaultFont.dispose();
            this.stringToFontRecord.put("org.eclipse.jface.defaultfont", record);
        }
        return record;
    }

    private FontData[] defaultFontData() {
        return this.defaultFontRecord().baseData;
    }

    public FontData[] getFontData(String symbolicName) {
        Assert.isNotNull((Object)symbolicName);
        Object result = this.stringToFontData.get(symbolicName);
        if (result == null) {
            return this.defaultFontData();
        }
        return (FontData[])result;
    }

    public Font get(String symbolicName) {
        return this.getFontRecord(symbolicName).getBaseFont();
    }

    public Font getBold(String symbolicName) {
        return this.getFontRecord(symbolicName).getBoldFont();
    }

    public Font getItalic(String symbolicName) {
        return this.getFontRecord(symbolicName).getItalicFont();
    }

    private FontRecord getFontRecord(String symbolicName) {
        Assert.isNotNull((Object)symbolicName);
        Object result = this.stringToFontRecord.get(symbolicName);
        if (result != null) {
            return (FontRecord)result;
        }
        result = this.stringToFontData.get(symbolicName);
        FontRecord fontRecord = result == null ? this.defaultFontRecord() : this.createFont(symbolicName, (FontData[])result);
        if (fontRecord == null) {
            fontRecord = this.defaultFontRecord();
            if (Display.getCurrent() == null) {
                String msg = "Unable to create font \"" + symbolicName + "\" in a non-UI thread. Using default font instead.";
                Policy.logException((Exception)((Object)new SWTException(msg)));
                return fontRecord;
            }
        }
        this.stringToFontRecord.put(symbolicName, fontRecord);
        return fontRecord;
    }

    public Set getKeySet() {
        return Collections.unmodifiableSet(this.stringToFontData.keySet());
    }

    public boolean hasValueFor(String fontKey) {
        return this.stringToFontData.containsKey(fontKey);
    }

    protected void clearCaches() {
        Iterator iterator = this.stringToFontRecord.values().iterator();
        while (iterator.hasNext()) {
            Object next = iterator.next();
            ((FontRecord)next).dispose();
        }
        this.disposeFonts(this.staleFonts.iterator());
        this.stringToFontRecord.clear();
        this.staleFonts.clear();
        this.displayDisposeHooked = false;
    }

    private void disposeFonts(Iterator iterator) {
        while (iterator.hasNext()) {
            Object next = iterator.next();
            ((Font)next).dispose();
        }
    }

    private void hookDisplayDispose(Display display) {
        this.displayDisposeHooked = true;
        display.disposeExec(this.displayRunnable);
    }

    private boolean isFixedFont(FontData[] fixedFonts, FontData fd) {
        int height = fd.getHeight();
        String name = fd.getName();
        int i = 0;
        while (i < fixedFonts.length) {
            FontData fixed = fixedFonts[i];
            if (fixed.getHeight() == height && fixed.getName().equals(name)) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private FontData makeFontData(String value) throws MissingResourceException {
        try {
            return StringConverter.asFontData(value.trim());
        }
        catch (DataFormatException dataFormatException) {
            throw new MissingResourceException("Wrong font data format. Value is: \"" + value + "\"", ((Object)((Object)this)).getClass().getName(), value);
        }
    }

    public void put(String symbolicName, FontData[] fontData) {
        this.put(symbolicName, fontData, true);
    }

    private void put(String symbolicName, FontData[] fontData, boolean update) {
        Assert.isNotNull((Object)symbolicName);
        Assert.isNotNull((Object)fontData);
        Object[] existing = (FontData[])this.stringToFontData.get(symbolicName);
        if (Arrays.equals(existing, fontData)) {
            return;
        }
        FontRecord oldFont = (FontRecord)this.stringToFontRecord.remove(symbolicName);
        this.stringToFontData.put(symbolicName, fontData);
        if (update) {
            this.fireMappingChanged(symbolicName, existing, fontData);
        }
        if (oldFont != null) {
            oldFont.addAllocatedFontsToStale(this.defaultFontRecord().getBaseFont());
        }
    }

    private void readResourceBundle(ResourceBundle bundle, String bundleName) throws MissingResourceException {
        Enumeration<String> keys = bundle.getKeys();
        while (keys.hasMoreElements()) {
            String key = keys.nextElement();
            int pos = key.lastIndexOf(46);
            if (pos == -1) {
                this.stringToFontData.put(key, new FontData[]{this.makeFontData(bundle.getString(key))});
                continue;
            }
            String name = key.substring(0, pos);
            int i = 0;
            try {
                i = Integer.parseInt(key.substring(pos + 1));
            }
            catch (NumberFormatException numberFormatException) {
                throw new MissingResourceException("Wrong key format ", bundleName, key);
            }
            FontData[] elements = (FontData[])this.stringToFontData.get(name);
            if (elements == null) {
                elements = new FontData[8];
                this.stringToFontData.put(name, elements);
            }
            if (i > elements.length) {
                FontData[] na = new FontData[i + 8];
                System.arraycopy(elements, 0, na, 0, elements.length);
                elements = na;
                this.stringToFontData.put(name, elements);
            }
            elements[i] = this.makeFontData(bundle.getString(key));
        }
    }

    public FontDescriptor defaultFontDescriptor() {
        return FontDescriptor.createFrom(this.defaultFontData());
    }

    private class FontRecord {
        Font baseFont;
        Font boldFont;
        Font italicFont;
        FontData[] baseData;

        FontRecord(Font plainFont, FontData[] data) {
            this.baseFont = plainFont;
            this.baseData = data;
        }

        void dispose() {
            this.baseFont.dispose();
            if (this.boldFont != null) {
                this.boldFont.dispose();
            }
            if (this.italicFont != null) {
                this.italicFont.dispose();
            }
        }

        public Font getBaseFont() {
            return this.baseFont;
        }

        public Font getBoldFont() {
            if (this.boldFont != null) {
                return this.boldFont;
            }
            FontData[] boldData = this.getModifiedFontData(1);
            this.boldFont = new Font((Device)Display.getCurrent(), boldData);
            return this.boldFont;
        }

        private FontData[] getModifiedFontData(int style) {
            FontData[] styleData = new FontData[this.baseData.length];
            int i = 0;
            while (i < styleData.length) {
                FontData base = this.baseData[i];
                styleData[i] = new FontData(base.getName(), base.getHeight(), base.getStyle() | style);
                ++i;
            }
            return styleData;
        }

        public Font getItalicFont() {
            if (this.italicFont != null) {
                return this.italicFont;
            }
            FontData[] italicData = this.getModifiedFontData(2);
            this.italicFont = new Font((Device)Display.getCurrent(), italicData);
            return this.italicFont;
        }

        void addAllocatedFontsToStale(Font defaultFont) {
            if (defaultFont != this.baseFont && this.baseFont != null) {
                FontRegistry.this.staleFonts.add(this.baseFont);
            }
            if (defaultFont != this.boldFont && this.boldFont != null) {
                FontRegistry.this.staleFonts.add(this.boldFont);
            }
            if (defaultFont != this.italicFont && this.italicFont != null) {
                FontRegistry.this.staleFonts.add(this.italicFont);
            }
        }
    }
}

