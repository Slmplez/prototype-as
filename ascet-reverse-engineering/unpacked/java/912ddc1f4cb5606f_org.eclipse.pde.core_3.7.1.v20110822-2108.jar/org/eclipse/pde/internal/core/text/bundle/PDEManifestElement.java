/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.ManifestElement
 *  org.osgi.framework.BundleException
 */
package org.eclipse.pde.internal.core.text.bundle;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeMap;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.pde.internal.core.bundle.BundleObject;
import org.eclipse.pde.internal.core.ibundle.IBundleModel;
import org.eclipse.pde.internal.core.text.bundle.ManifestHeader;
import org.osgi.framework.BundleException;

public class PDEManifestElement
extends BundleObject {
    private static final long serialVersionUID = 1L;
    protected String[] fValueComponents;
    protected TreeMap fAttributes;
    protected TreeMap fDirectives;
    protected transient ManifestHeader fHeader;

    public PDEManifestElement(ManifestHeader header, String value) {
        this.setHeader(header);
        this.setValue(value);
        this.setModel(this.fHeader.getBundle().getModel());
    }

    protected PDEManifestElement(ManifestHeader header, ManifestElement manifestElement) {
        this.setHeader(header);
        this.init(manifestElement);
        this.setModel(this.fHeader.getBundle().getModel());
    }

    public String[] getValueComponents() {
        return this.fValueComponents;
    }

    protected void setValueComponents(String[] valueComponents) {
        this.fValueComponents = valueComponents;
    }

    public String[] getAttributes(String key) {
        return this.getTableValues(this.fAttributes, key);
    }

    public String getAttribute(String key) {
        return this.getTableValue(this.fAttributes, key);
    }

    public Set getKeys() {
        return this.getTableKeys(this.fAttributes);
    }

    public void addAttribute(String key, String value) {
        this.fAttributes = this.addTableValue(this.fAttributes, key, value);
    }

    public void setAttribute(String key, String value) {
        this.fAttributes = this.setTableValue(this.fAttributes, key, value);
    }

    public String getDirective(String key) {
        return this.getTableValue(this.fDirectives, key);
    }

    public String[] getDirectives(String key) {
        return this.getTableValues(this.fDirectives, key);
    }

    public Set getDirectiveKeys() {
        return this.getTableKeys(this.fDirectives);
    }

    public void addDirective(String key, String value) {
        this.fDirectives = this.addTableValue(this.fDirectives, key, value);
    }

    public void setDirective(String key, String value) {
        this.fDirectives = this.setTableValue(this.fDirectives, key, value);
    }

    private String getTableValue(TreeMap table, String key) {
        if (table == null) {
            return null;
        }
        Object result = table.get(key);
        if (result == null) {
            return null;
        }
        if (result instanceof String) {
            return (String)result;
        }
        ArrayList valueList = (ArrayList)result;
        return (String)valueList.get(valueList.size() - 1);
    }

    private String[] getTableValues(TreeMap table, String key) {
        if (table == null) {
            return null;
        }
        Object result = table.get(key);
        if (result == null) {
            return null;
        }
        if (result instanceof String) {
            return new String[]{(String)result};
        }
        ArrayList valueList = (ArrayList)result;
        return valueList.toArray(new String[valueList.size()]);
    }

    private Set getTableKeys(TreeMap table) {
        if (table == null) {
            return null;
        }
        return table.keySet();
    }

    private TreeMap addTableValue(TreeMap table, String key, String value) {
        Object curValue;
        if (table == null) {
            table = new TreeMap<String, Object>();
        }
        if ((curValue = table.get(key)) != null) {
            ArrayList<String> newList;
            if (curValue instanceof ArrayList) {
                newList = (ArrayList<String>)curValue;
            } else {
                newList = new ArrayList<String>(5);
                newList.add((String)curValue);
            }
            newList.add(value);
            table.put(key, newList);
        } else {
            table.put(key, value);
        }
        return table;
    }

    private TreeMap setTableValue(TreeMap table, String key, String value) {
        if (table == null) {
            table = new TreeMap<String, String>();
        }
        if (value == null || value.trim().length() == 0) {
            table.remove(key);
        } else {
            table.put(key, value);
        }
        return table;
    }

    public void setValue(String value) {
        if (value == null) {
            this.setValueComponents(new String[0]);
            return;
        }
        try {
            ManifestElement[] elements = ManifestElement.parseHeader((String)this.fHeader.fName, (String)value);
            if (elements != null && elements.length > 0) {
                this.init(elements[0]);
            }
        }
        catch (BundleException bundleException) {}
    }

    private void init(ManifestElement manifestElement) {
        Enumeration dirKeys;
        this.setValueComponents(manifestElement.getValueComponents());
        Enumeration attKeys = manifestElement.getKeys();
        if (attKeys != null) {
            while (attKeys.hasMoreElements()) {
                String attKey = (String)attKeys.nextElement();
                String[] values = ManifestElement.getArrayFromList((String)manifestElement.getAttribute(attKey));
                int i = 0;
                while (i < values.length) {
                    this.addAttribute(attKey, values[i]);
                    ++i;
                }
            }
        }
        if ((dirKeys = manifestElement.getDirectiveKeys()) != null) {
            while (dirKeys.hasMoreElements()) {
                String dirKey = (String)dirKeys.nextElement();
                String[] values = ManifestElement.getArrayFromList((String)manifestElement.getDirective(dirKey));
                int i = 0;
                while (i < values.length) {
                    this.addDirective(dirKey, values[i]);
                    ++i;
                }
            }
        }
    }

    public String write() {
        StringBuffer sb = new StringBuffer(this.getValue());
        this.appendValuesToBuffer(sb, this.fAttributes);
        this.appendValuesToBuffer(sb, this.fDirectives);
        return sb.toString();
    }

    public String getValue() {
        StringBuffer sb = new StringBuffer();
        if (this.fValueComponents == null) {
            return "";
        }
        int i = 0;
        while (i < this.fValueComponents.length) {
            if (i != 0) {
                sb.append("; ");
            }
            sb.append(this.fValueComponents[i]);
            ++i;
        }
        return sb.toString();
    }

    protected void appendValuesToBuffer(StringBuffer sb, TreeMap table) {
        if (table == null) {
            return;
        }
        Iterator dkeys = table.keySet().iterator();
        while (dkeys.hasNext()) {
            boolean wrap;
            String dkey = (String)dkeys.next();
            Object value = table.get(dkey);
            if (value == null) continue;
            sb.append(";");
            sb.append(dkey);
            sb.append(table.equals(this.fDirectives) ? ":=" : "=");
            if (value instanceof String) {
                boolean wrap2 = this.shouldWrap(value.toString());
                if (wrap2) {
                    sb.append("\"");
                }
                sb.append(value);
                if (!wrap2) continue;
                sb.append("\"");
                continue;
            }
            if (!(value instanceof ArrayList)) continue;
            ArrayList values = (ArrayList)value;
            boolean bl = wrap = values.size() > 1 || values.size() == 1 && this.shouldWrap(values.get(0).toString());
            if (wrap) {
                sb.append("\"");
            }
            int i = 0;
            while (i < values.size()) {
                if (i != 0) {
                    sb.append(",");
                }
                sb.append(values.get(i));
                ++i;
            }
            if (!wrap) continue;
            sb.append("\"");
        }
    }

    private boolean shouldWrap(String value) {
        return value.indexOf(32) != -1 || value.indexOf(44) != -1 || value.indexOf(46) != -1 || value.indexOf(91) != -1 || value.indexOf(40) != -1;
    }

    public ManifestHeader getHeader() {
        return this.fHeader;
    }

    public void setHeader(ManifestHeader header) {
        this.fHeader = header;
    }

    public void reconnect(IBundleModel model, ManifestHeader header) {
        super.reconnect(model);
        this.fHeader = header;
    }
}

