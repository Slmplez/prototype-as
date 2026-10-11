/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.io.UnsupportedEncodingException;
import java.util.Map;
import org.eclipse.core.internal.resources.IMarkerSetElement;
import org.eclipse.core.internal.resources.MarkerAttributeMap;
import org.eclipse.core.internal.utils.IStringPoolParticipant;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.StringPool;
import org.eclipse.core.runtime.Assert;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MarkerInfo
implements IMarkerSetElement,
Cloneable,
IStringPoolParticipant {
    protected static final Integer INTEGER_ONE = new Integer(1);
    protected static final Integer INTEGER_TWO = new Integer(2);
    protected static final Integer INTEGER_ZERO = new Integer(0);
    protected static final long UNDEFINED_ID = -1L;
    protected Map<String, Object> attributes = null;
    protected long creationTime = 0L;
    protected long id = -1L;
    protected String type = null;

    protected static Object checkValidAttribute(Object value) {
        if (value == null) {
            return null;
        }
        if (value instanceof String) {
            byte[] bytes;
            String valueString = (String)value;
            if (valueString.length() < 21000) {
                return value;
            }
            try {
                bytes = valueString.getBytes("UTF-8");
            }
            catch (UnsupportedEncodingException unsupportedEncodingException) {
                return value;
            }
            if (bytes.length > 65535) {
                String msg = "Marker property value is too long: " + valueString.substring(0, 10000);
                Assert.isTrue((boolean)false, (String)msg);
            }
            return value;
        }
        if (value instanceof Boolean) {
            return (Boolean)value != false ? Boolean.TRUE : Boolean.FALSE;
        }
        if (value instanceof Integer) {
            switch ((Integer)value) {
                case 0: {
                    return INTEGER_ZERO;
                }
                case 1: {
                    return INTEGER_ONE;
                }
                case 2: {
                    return INTEGER_TWO;
                }
            }
            return value;
        }
        throw new IllegalArgumentException(NLS.bind((String)Messages.resources_wrongMarkerAttributeValueType, (Object)value.getClass().getName()));
    }

    public Object clone() {
        try {
            MarkerInfo copy = (MarkerInfo)super.clone();
            copy.attributes = this.getAttributes(true);
            return copy;
        }
        catch (CloneNotSupportedException cloneNotSupportedException) {
            return null;
        }
    }

    public Object getAttribute(String attributeName) {
        return this.attributes == null ? null : this.attributes.get(attributeName);
    }

    public Map<String, Object> getAttributes() {
        return this.getAttributes(true);
    }

    public Map<String, Object> getAttributes(boolean makeCopy) {
        if (this.attributes == null) {
            return null;
        }
        return makeCopy ? new MarkerAttributeMap<Object>(this.attributes) : this.attributes;
    }

    public Object[] getAttributes(String[] attributeNames) {
        Object[] result = new Object[attributeNames.length];
        int i = 0;
        while (i < attributeNames.length) {
            result[i] = this.getAttribute(attributeNames[i]);
            ++i;
        }
        return result;
    }

    public long getCreationTime() {
        return this.creationTime;
    }

    @Override
    public long getId() {
        return this.id;
    }

    public String getType() {
        return this.type;
    }

    public void internalSetAttributes(Map<String, Object> map) {
        this.attributes = map;
    }

    public void setAttribute(String attributeName, Object value, boolean validate) {
        if (validate) {
            value = MarkerInfo.checkValidAttribute(value);
        }
        if (this.attributes == null) {
            if (value == null) {
                return;
            }
            this.attributes = new MarkerAttributeMap<Object>();
            this.attributes.put(attributeName, value);
        } else if (value == null) {
            this.attributes.remove(attributeName);
            if (this.attributes.isEmpty()) {
                this.attributes = null;
            }
        } else {
            this.attributes.put(attributeName, value);
        }
    }

    public void setAttributes(Map<String, ? extends Object> map, boolean validate) {
        if (map == null) {
            this.attributes = null;
        } else {
            this.attributes = new MarkerAttributeMap<Object>(map.size());
            for (String key : map.keySet()) {
                Assert.isTrue((boolean)(key instanceof String));
                Object value = map.get(key);
                this.setAttribute(key, value, validate);
            }
        }
    }

    public void setAttributes(String[] attributeNames, Object[] values, boolean validate) {
        Assert.isTrue((attributeNames.length == values.length ? 1 : 0) != 0);
        int i = 0;
        while (i < attributeNames.length) {
            this.setAttribute(attributeNames[i], values[i], validate);
            ++i;
        }
    }

    public void setCreationTime(long value) {
        this.creationTime = value;
    }

    public void setId(long value) {
        this.id = value;
    }

    public void setType(String value) {
        this.type = value;
    }

    @Override
    public void shareStrings(StringPool set) {
        this.type = set.add(this.type);
        Map<String, Object> map = this.attributes;
        if (map instanceof IStringPoolParticipant) {
            ((IStringPoolParticipant)((Object)map)).shareStrings(set);
        }
    }
}

