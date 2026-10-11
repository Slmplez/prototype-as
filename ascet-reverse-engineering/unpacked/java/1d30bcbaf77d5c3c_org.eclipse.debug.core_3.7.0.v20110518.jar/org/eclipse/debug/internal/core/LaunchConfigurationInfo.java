/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.debug.internal.core;

import com.ibm.icu.text.MessageFormat;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerException;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunchConfigurationType;
import org.eclipse.debug.internal.core.DebugCoreMessages;
import org.eclipse.debug.internal.core.LaunchManager;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class LaunchConfigurationInfo {
    private static final String KEY = "key";
    private static final String VALUE = "value";
    private static final String SET_ENTRY = "setEntry";
    private static final String LAUNCH_CONFIGURATION = "launchConfiguration";
    private static final String MAP_ENTRY = "mapEntry";
    private static final String LIST_ENTRY = "listEntry";
    private static final String SET_ATTRIBUTE = "setAttribute";
    private static final String MAP_ATTRIBUTE = "mapAttribute";
    private static final String LIST_ATTRIBUTE = "listAttribute";
    private static final String BOOLEAN_ATTRIBUTE = "booleanAttribute";
    private static final String INT_ATTRIBUTE = "intAttribute";
    private static final String STRING_ATTRIBUTE = "stringAttribute";
    private static final String TYPE = "type";
    private TreeMap fAttributes;
    private ILaunchConfigurationType fType;
    private static boolean fgIsSun14x;

    static {
        String version;
        fgIsSun14x = false;
        String vendor = System.getProperty("java.vm.vendor");
        if (vendor.startsWith("Sun Microsystems") && (version = System.getProperty("java.vm.version")).startsWith("1.4")) {
            fgIsSun14x = true;
        }
    }

    protected LaunchConfigurationInfo() {
        this.setAttributeTable(new TreeMap());
    }

    private TreeMap getAttributeTable() {
        return this.fAttributes;
    }

    private void setAttributeTable(TreeMap table) {
        this.fAttributes = table;
    }

    protected void setAttributes(Map map) {
        if (map == null) {
            this.setAttributeTable(new TreeMap());
            return;
        }
        this.setAttributeTable(new TreeMap(map));
    }

    protected String getStringAttribute(String key, String defaultValue) throws CoreException {
        Object attr = this.getAttributeTable().get(key);
        if (attr != null) {
            if (attr instanceof String) {
                return (String)attr;
            }
            throw new DebugException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 5012, MessageFormat.format((String)DebugCoreMessages.LaunchConfigurationInfo_Attribute__0__is_not_of_type_java_lang_String__1, (Object[])new String[]{key}), null));
        }
        return defaultValue;
    }

    protected int getIntAttribute(String key, int defaultValue) throws CoreException {
        Object attr = this.getAttributeTable().get(key);
        if (attr != null) {
            if (attr instanceof Integer) {
                return (Integer)attr;
            }
            throw new DebugException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 5012, MessageFormat.format((String)DebugCoreMessages.LaunchConfigurationInfo_Attribute__0__is_not_of_type_int__2, (Object[])new String[]{key}), null));
        }
        return defaultValue;
    }

    protected boolean getBooleanAttribute(String key, boolean defaultValue) throws CoreException {
        Object attr = this.getAttributeTable().get(key);
        if (attr != null) {
            if (attr instanceof Boolean) {
                return (Boolean)attr;
            }
            throw new DebugException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 5012, MessageFormat.format((String)DebugCoreMessages.LaunchConfigurationInfo_Attribute__0__is_not_of_type_boolean__3, (Object[])new String[]{key}), null));
        }
        return defaultValue;
    }

    protected List getListAttribute(String key, List defaultValue) throws CoreException {
        Object attr = this.getAttributeTable().get(key);
        if (attr != null) {
            if (attr instanceof List) {
                return (List)attr;
            }
            throw new DebugException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 5012, MessageFormat.format((String)DebugCoreMessages.LaunchConfigurationInfo_Attribute__0__is_not_of_type_java_util_List__1, (Object[])new String[]{key}), null));
        }
        return defaultValue;
    }

    protected Set getSetAttribute(String key, Set defaultValue) throws CoreException {
        Object attr = this.getAttributeTable().get(key);
        if (attr != null) {
            if (attr instanceof Set) {
                return (Set)attr;
            }
            throw new DebugException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 5012, MessageFormat.format((String)DebugCoreMessages.LaunchConfigurationInfo_35, (Object[])new String[]{key}), null));
        }
        return defaultValue;
    }

    protected Map getMapAttribute(String key, Map defaultValue) throws CoreException {
        Object attr = this.getAttributeTable().get(key);
        if (attr != null) {
            if (attr instanceof Map) {
                return (Map)attr;
            }
            throw new DebugException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 5012, MessageFormat.format((String)DebugCoreMessages.LaunchConfigurationInfo_Attribute__0__is_not_of_type_java_util_Map__1, (Object[])new String[]{key}), null));
        }
        return defaultValue;
    }

    protected void setType(ILaunchConfigurationType type) {
        this.fType = type;
    }

    protected ILaunchConfigurationType getType() {
        return this.fType;
    }

    protected LaunchConfigurationInfo getCopy() {
        LaunchConfigurationInfo copy = new LaunchConfigurationInfo();
        copy.setType(this.getType());
        copy.setAttributeTable(this.getAttributes());
        return copy;
    }

    protected TreeMap getAttributes() {
        return (TreeMap)this.getAttributeTable().clone();
    }

    protected void setAttribute(String key, Object value) {
        if (value == null) {
            this.getAttributeTable().remove(key);
        } else {
            this.getAttributeTable().put(key, value);
        }
    }

    protected String getAsXML() throws CoreException, IOException, ParserConfigurationException, TransformerException {
        Document doc = LaunchManager.getDocument();
        Element configRootElement = doc.createElement(LAUNCH_CONFIGURATION);
        doc.appendChild(configRootElement);
        configRootElement.setAttribute(TYPE, this.getType().getIdentifier());
        Iterator keys = this.getAttributeTable().keySet().iterator();
        while (keys.hasNext()) {
            String key = (String)keys.next();
            if (key == null) {
                throw new DebugException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 5012, DebugCoreMessages.LaunchConfigurationInfo_36, null));
            }
            Object value = this.getAttributeTable().get(key);
            if (value == null) continue;
            Element element = null;
            String valueString = null;
            if (value instanceof String) {
                valueString = (String)value;
                element = this.createKeyValueElement(doc, STRING_ATTRIBUTE, key, valueString);
            } else if (value instanceof Integer) {
                valueString = ((Integer)value).toString();
                element = this.createKeyValueElement(doc, INT_ATTRIBUTE, key, valueString);
            } else if (value instanceof Boolean) {
                valueString = ((Boolean)value).toString();
                element = this.createKeyValueElement(doc, BOOLEAN_ATTRIBUTE, key, valueString);
            } else if (value instanceof List) {
                element = this.createListElement(doc, LIST_ATTRIBUTE, key, (List)value);
            } else if (value instanceof Map) {
                element = this.createMapElement(doc, MAP_ATTRIBUTE, key, (Map)value);
            } else if (value instanceof Set) {
                element = this.createSetElement(doc, SET_ATTRIBUTE, key, (Set)value);
            }
            configRootElement.appendChild(element);
        }
        return LaunchManager.serializeDocument(doc);
    }

    protected Element createKeyValueElement(Document doc, String elementType, String key, String value) {
        Element element = doc.createElement(elementType);
        element.setAttribute(KEY, key);
        element.setAttribute(VALUE, value);
        return element;
    }

    protected Element createListElement(Document doc, String elementType, String listKey, List list) {
        Element listElement = doc.createElement(elementType);
        listElement.setAttribute(KEY, listKey);
        Iterator iterator = list.iterator();
        while (iterator.hasNext()) {
            String value = (String)iterator.next();
            Element element = doc.createElement(LIST_ENTRY);
            element.setAttribute(VALUE, value);
            listElement.appendChild(element);
        }
        return listElement;
    }

    protected Element createSetElement(Document doc, String elementType, String setKey, Set set) {
        Element setElement = doc.createElement(elementType);
        setElement.setAttribute(KEY, setKey);
        ArrayList list = new ArrayList(set);
        Collections.sort(list);
        Element element = null;
        Iterator iter = list.iterator();
        while (iter.hasNext()) {
            element = doc.createElement(SET_ENTRY);
            element.setAttribute(VALUE, (String)iter.next());
            setElement.appendChild(element);
        }
        return setElement;
    }

    protected Element createMapElement(Document doc, String elementType, String mapKey, Map map) {
        Element mapElement = doc.createElement(elementType);
        mapElement.setAttribute(KEY, mapKey);
        ArrayList keys = new ArrayList(map.keySet());
        Collections.sort(keys);
        Iterator iterator = keys.iterator();
        while (iterator.hasNext()) {
            String key = (String)iterator.next();
            String value = (String)map.get(key);
            Element element = doc.createElement(MAP_ENTRY);
            element.setAttribute(KEY, key);
            element.setAttribute(VALUE, value);
            mapElement.appendChild(element);
        }
        return mapElement;
    }

    protected void initializeFromXML(Element root) throws CoreException {
        if (!root.getNodeName().equalsIgnoreCase(LAUNCH_CONFIGURATION)) {
            throw this.getInvalidFormatDebugException();
        }
        String id = root.getAttribute(TYPE);
        if (id == null) {
            throw this.getInvalidFormatDebugException();
        }
        ILaunchConfigurationType type = DebugPlugin.getDefault().getLaunchManager().getLaunchConfigurationType(id);
        if (type == null) {
            String message = MessageFormat.format((String)DebugCoreMessages.LaunchConfigurationInfo_missing_type, (Object[])new Object[]{id});
            throw new DebugException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 5020, message, null));
        }
        this.setType(type);
        NodeList list = root.getChildNodes();
        Node node = null;
        Element element = null;
        String nodeName = null;
        int i = 0;
        while (i < list.getLength()) {
            node = list.item(i);
            short nodeType = node.getNodeType();
            if (nodeType == 1) {
                element = (Element)node;
                nodeName = element.getNodeName();
                if (nodeName.equalsIgnoreCase(STRING_ATTRIBUTE)) {
                    this.setStringAttribute(element);
                } else if (nodeName.equalsIgnoreCase(INT_ATTRIBUTE)) {
                    this.setIntegerAttribute(element);
                } else if (nodeName.equalsIgnoreCase(BOOLEAN_ATTRIBUTE)) {
                    this.setBooleanAttribute(element);
                } else if (nodeName.equalsIgnoreCase(LIST_ATTRIBUTE)) {
                    this.setListAttribute(element);
                } else if (nodeName.equalsIgnoreCase(MAP_ATTRIBUTE)) {
                    this.setMapAttribute(element);
                } else if (nodeName.equalsIgnoreCase(SET_ATTRIBUTE)) {
                    this.setSetAttribute(element);
                }
            }
            ++i;
        }
    }

    protected void setStringAttribute(Element element) throws CoreException {
        this.setAttribute(this.getKeyAttribute(element), this.getValueAttribute(element));
    }

    protected void setIntegerAttribute(Element element) throws CoreException {
        this.setAttribute(this.getKeyAttribute(element), new Integer(this.getValueAttribute(element)));
    }

    protected void setBooleanAttribute(Element element) throws CoreException {
        this.setAttribute(this.getKeyAttribute(element), Boolean.valueOf(this.getValueAttribute(element)));
    }

    protected void setListAttribute(Element element) throws CoreException {
        String listKey = element.getAttribute(KEY);
        NodeList nodeList = element.getChildNodes();
        int entryCount = nodeList.getLength();
        ArrayList<String> list = new ArrayList<String>(entryCount);
        Node node = null;
        Element selement = null;
        int i = 0;
        while (i < entryCount) {
            node = nodeList.item(i);
            if (node.getNodeType() == 1) {
                selement = (Element)node;
                if (!selement.getNodeName().equalsIgnoreCase(LIST_ENTRY)) {
                    throw this.getInvalidFormatDebugException();
                }
                list.add(this.getValueAttribute(selement));
            }
            ++i;
        }
        this.setAttribute(listKey, list);
    }

    protected void setSetAttribute(Element element) throws CoreException {
        String setKey = element.getAttribute(KEY);
        NodeList nodeList = element.getChildNodes();
        int entryCount = nodeList.getLength();
        HashSet<String> set = new HashSet<String>(entryCount);
        Node node = null;
        Element selement = null;
        int i = 0;
        while (i < entryCount) {
            node = nodeList.item(i);
            if (node.getNodeType() == 1) {
                selement = (Element)node;
                if (!selement.getNodeName().equalsIgnoreCase(SET_ENTRY)) {
                    throw this.getInvalidFormatDebugException();
                }
                set.add(this.getValueAttribute(selement));
            }
            ++i;
        }
        this.setAttribute(setKey, set);
    }

    protected void setMapAttribute(Element element) throws CoreException {
        String mapKey = element.getAttribute(KEY);
        NodeList nodeList = element.getChildNodes();
        int entryCount = nodeList.getLength();
        HashMap<String, String> map = new HashMap<String, String>(entryCount);
        Node node = null;
        Element selement = null;
        int i = 0;
        while (i < entryCount) {
            node = nodeList.item(i);
            if (node.getNodeType() == 1) {
                selement = (Element)node;
                if (!selement.getNodeName().equalsIgnoreCase(MAP_ENTRY)) {
                    throw this.getInvalidFormatDebugException();
                }
                map.put(this.getKeyAttribute(selement), this.getValueAttribute(selement));
            }
            ++i;
        }
        this.setAttribute(mapKey, map);
    }

    protected String getKeyAttribute(Element element) throws CoreException {
        String key = element.getAttribute(KEY);
        if (key == null) {
            throw this.getInvalidFormatDebugException();
        }
        return key;
    }

    protected String getValueAttribute(Element element) throws CoreException {
        String value = element.getAttribute(VALUE);
        if (value == null) {
            throw this.getInvalidFormatDebugException();
        }
        return value;
    }

    protected DebugException getInvalidFormatDebugException() {
        return new DebugException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 5012, DebugCoreMessages.LaunchConfigurationInfo_Invalid_launch_configuration_XML__10, null));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof LaunchConfigurationInfo)) {
            return false;
        }
        LaunchConfigurationInfo other = (LaunchConfigurationInfo)obj;
        if (!this.fType.getIdentifier().equals(other.getType().getIdentifier())) {
            return false;
        }
        return this.compareAttributes(this.fAttributes, other.getAttributeTable());
    }

    protected boolean compareAttributes(TreeMap map1, TreeMap map2) {
        LaunchManager manager = (LaunchManager)DebugPlugin.getDefault().getLaunchManager();
        if (map1.size() == map2.size()) {
            Iterator attributes = map1.keySet().iterator();
            while (attributes.hasNext()) {
                String key = (String)attributes.next();
                Object attr1 = map1.get(key);
                Object attr2 = map2.get(key);
                if (attr2 == null) {
                    return false;
                }
                Comparator comp = manager.getComparator(key);
                if (comp == null) {
                    if (fgIsSun14x && attr2 instanceof String & attr1 instanceof String) {
                        attr1 = ((String)attr1).replaceAll("\\r", "");
                        attr2 = ((String)attr2).replaceAll("\\r", "");
                    }
                    if (attr1.equals(attr2)) continue;
                    return false;
                }
                if (comp.compare(attr1, attr2) == 0) continue;
                return false;
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.fType.hashCode() + this.fAttributes.size();
    }

    protected boolean hasAttribute(String attributeName) {
        return this.fAttributes.containsKey(attributeName);
    }

    protected Object removeAttribute(String attributeName) {
        if (attributeName != null) {
            return this.fAttributes.remove(attributeName);
        }
        return null;
    }
}

