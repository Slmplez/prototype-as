/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.registry;

import java.util.Hashtable;
import org.eclipse.core.internal.registry.ConfigurationElementHandle;
import org.eclipse.core.internal.registry.ExtensionRegistry;
import org.eclipse.core.internal.registry.RegistryMessages;
import org.eclipse.core.internal.registry.RegistryObject;
import org.eclipse.core.internal.registry.RegistryObjectManager;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IContributor;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.core.runtime.IExecutableExtensionFactory;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.spi.RegistryContributor;
import org.eclipse.osgi.util.NLS;

public class ConfigurationElement
extends RegistryObject {
    static final ConfigurationElement[] EMPTY_ARRAY = new ConfigurationElement[0];
    int parentId;
    byte parentType;
    protected String[] propertiesAndValue;
    private String name;
    private String contributorId;

    protected ConfigurationElement(ExtensionRegistry registry, boolean persist) {
        super(registry, persist);
    }

    protected ConfigurationElement(int self, String contributorId, String name, String[] propertiesAndValue, int[] children, int extraDataOffset, int parent, byte parentType, ExtensionRegistry registry, boolean persist) {
        super(registry, persist);
        this.setObjectId(self);
        this.contributorId = contributorId;
        this.name = name;
        this.propertiesAndValue = propertiesAndValue;
        this.setRawChildren(children);
        this.setExtraDataOffset(extraDataOffset);
        this.parentId = parent;
        this.parentType = parentType;
    }

    void throwException(String message, Throwable exception) throws CoreException {
        throw new CoreException((IStatus)new Status(4, "org.eclipse.equinox.registry", 1, message, exception));
    }

    protected String getValue() {
        return this.getValueAsIs();
    }

    String getValueAsIs() {
        if (this.propertiesAndValue.length != 0 && this.propertiesAndValue.length % 2 == 1) {
            return this.propertiesAndValue[this.propertiesAndValue.length - 1];
        }
        return null;
    }

    public String getAttribute(String attrName) {
        return this.getAttributeAsIs(attrName);
    }

    String getAttributeAsIs(String attrName) {
        if (this.propertiesAndValue.length <= 1) {
            return null;
        }
        int size = this.propertiesAndValue.length - this.propertiesAndValue.length % 2;
        int i = 0;
        while (i < size) {
            if (this.propertiesAndValue[i].equals(attrName)) {
                return this.propertiesAndValue[i + 1];
            }
            i += 2;
        }
        return null;
    }

    protected String[] getAttributeNames() {
        if (this.propertiesAndValue.length <= 1) {
            return RegistryObjectManager.EMPTY_STRING_ARRAY;
        }
        int size = this.propertiesAndValue.length / 2;
        String[] result = new String[size];
        int i = 0;
        while (i < size) {
            result[i] = this.propertiesAndValue[i * 2];
            ++i;
        }
        return result;
    }

    void setProperties(String[] value) {
        this.propertiesAndValue = value;
    }

    protected String[] getPropertiesAndValue() {
        return this.propertiesAndValue;
    }

    void setValue(String value) {
        if (this.propertiesAndValue.length == 0) {
            this.propertiesAndValue = new String[]{value};
            return;
        }
        if (this.propertiesAndValue.length % 2 == 1) {
            this.propertiesAndValue[this.propertiesAndValue.length - 1] = value;
            return;
        }
        String[] newPropertiesAndValue = new String[this.propertiesAndValue.length + 1];
        System.arraycopy(this.propertiesAndValue, 0, newPropertiesAndValue, 0, this.propertiesAndValue.length);
        newPropertiesAndValue[this.propertiesAndValue.length] = value;
        this.propertiesAndValue = newPropertiesAndValue;
    }

    void setContributorId(String id) {
        this.contributorId = id;
    }

    protected String getContributorId() {
        return this.contributorId;
    }

    public ConfigurationElement[] getChildren(String childrenName) {
        if (this.getRawChildren().length == 0) {
            return EMPTY_ARRAY;
        }
        ConfigurationElement[] result = new ConfigurationElement[1];
        int idx = 0;
        RegistryObjectManager objectManager = this.registry.getObjectManager();
        int i = 0;
        while (i < this.children.length) {
            ConfigurationElement toTest = (ConfigurationElement)objectManager.getObject(this.children[i], this.noExtraData() ? (byte)1 : 4);
            if (toTest.name.equals(childrenName)) {
                if (idx != 0) {
                    ConfigurationElement[] copy = new ConfigurationElement[result.length + 1];
                    System.arraycopy(result, 0, copy, 0, result.length);
                    result = copy;
                }
                result[idx++] = toTest;
            }
            ++i;
        }
        if (idx == 0) {
            result = EMPTY_ARRAY;
        }
        return result;
    }

    void setParentId(int objectId) {
        this.parentId = objectId;
    }

    protected String getName() {
        return this.name;
    }

    void setName(String name) {
        this.name = name;
    }

    void setParentType(byte type) {
        this.parentType = type;
    }

    public IContributor getContributor() {
        return this.registry.getObjectManager().getContributor(this.contributorId);
    }

    protected Object createExecutableExtension(String attributeName) throws CoreException {
        String prop = null;
        String contributorName = null;
        String className = null;
        Object initData = null;
        if (attributeName != null) {
            prop = this.getAttribute(attributeName);
        } else {
            prop = this.getValue();
            if (prop != null && (prop = prop.trim()).equals("")) {
                prop = null;
            }
        }
        if (prop == null) {
            ConfigurationElement[] exec = this.getChildren(attributeName);
            if (exec.length != 0) {
                ConfigurationElement element = exec[0];
                contributorName = element.getAttribute("plugin");
                className = element.getAttribute("class");
                ConfigurationElement[] parms = element.getChildren("parameter");
                if (parms.length != 0) {
                    Hashtable<String, String> initParms = new Hashtable<String, String>(parms.length + 1);
                    int i = 0;
                    while (i < parms.length) {
                        String pname = parms[i].getAttribute("name");
                        if (pname != null) {
                            initParms.put(pname, parms[i].getAttribute("value"));
                        }
                        ++i;
                    }
                    if (!initParms.isEmpty()) {
                        initData = initParms;
                    }
                }
            } else {
                this.throwException(NLS.bind((String)RegistryMessages.exExt_extDefNotFound, (Object)attributeName), null);
            }
        } else {
            String executable;
            int i = prop.indexOf(58);
            if (i != -1) {
                executable = prop.substring(0, i).trim();
                initData = prop.substring(i + 1).trim();
            } else {
                executable = prop;
            }
            i = executable.indexOf(47);
            if (i != -1) {
                contributorName = executable.substring(0, i).trim();
                className = executable.substring(i + 1).trim();
            } else {
                className = executable;
            }
        }
        RegistryContributor defaultContributor = this.registry.getObjectManager().getContributor(this.contributorId);
        Object result = this.registry.createExecutableExtension(defaultContributor, className, contributorName);
        try {
            ConfigurationElementHandle confElementHandle = new ConfigurationElementHandle(this.registry.getObjectManager(), this.getObjectId());
            if (result instanceof IExecutableExtension) {
                ((IExecutableExtension)result).setInitializationData(confElementHandle, attributeName, initData);
            }
        }
        catch (CoreException ce) {
            throw ce;
        }
        catch (Exception te) {
            this.throwException(NLS.bind((String)RegistryMessages.plugin_initObjectError, (Object)this.getContributor().getName(), (Object)className), te);
        }
        if (result instanceof IExecutableExtensionFactory) {
            result = ((IExecutableExtensionFactory)result).create();
        }
        return result;
    }

    String getAttribute(String attrName, String locale) {
        this.registry.logMultiLangError();
        return this.getAttribute(attrName);
    }

    String getValue(String locale) {
        this.registry.logMultiLangError();
        return this.getValue();
    }
}

