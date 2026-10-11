/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.emf.ecore.xmi.XMLResource
 *  org.eclipse.sphinx.platform.util.PlatformLogUtil
 */
package org.eclipse.sphinx.emf.resource;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.emf.internal.resource.ModelConverterDescription;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.resource.IModelConverter;
import org.eclipse.sphinx.emf.resource.IModelConverterDescription;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ModelConverterRegistry {
    private static final String EXTP_MODEL_CONVERTERS = "modelConverters";
    private static final String ATTR_CLASS = "class";
    private static final String ELEM_DESC = "behaviorDetails";
    private static final String ELEM_WARNING = "warning";
    public static final ModelConverterRegistry INSTANCE = new ModelConverterRegistry();
    protected List<IModelConverter> fModelConverters = null;
    private Map<IModelConverter, IModelConverterDescription> fConverterDescriptions = new HashMap<IModelConverter, IModelConverterDescription>();

    protected void init() {
        block5: {
            this.fModelConverters = new ArrayList<IModelConverter>();
            try {
                IConfigurationElement[] configurationElements;
                IExtensionRegistry registry = Platform.getExtensionRegistry();
                if (registry == null) break block5;
                String symbolicName = Activator.getPlugin().getSymbolicName();
                IConfigurationElement[] iConfigurationElementArray = configurationElements = registry.getConfigurationElementsFor(symbolicName, EXTP_MODEL_CONVERTERS);
                int n = configurationElements.length;
                int n2 = 0;
                while (n2 < n) {
                    IConfigurationElement element = iConfigurationElementArray[n2];
                    try {
                        IModelConverter converter = (IModelConverter)element.createExecutableExtension(ATTR_CLASS);
                        ModelConverterDescription convDesc = new ModelConverterDescription(this.getDescription(element), this.getWarning(element));
                        this.fConverterDescriptions.put(converter, convDesc);
                        this.fModelConverters.add(converter);
                    }
                    catch (CoreException ex) {
                        PlatformLogUtil.logAsError((Plugin)Activator.getDefault(), (Object)((Object)ex));
                    }
                    ++n2;
                }
            }
            catch (Exception ex) {
                PlatformLogUtil.logAsError((Plugin)Activator.getDefault(), (Object)ex);
            }
        }
    }

    private String getWarning(IConfigurationElement element) {
        return this.getUniqueChildValue(element, ELEM_WARNING);
    }

    private String getDescription(IConfigurationElement element) {
        return this.getUniqueChildValue(element, ELEM_DESC);
    }

    private String getUniqueChildValue(IConfigurationElement configElem, String childName) {
        IConfigurationElement[] childElems = configElem.getChildren(childName);
        if (childElems.length == 1) {
            return childElems[0].getValue();
        }
        int cfr_ignored_0 = childElems.length;
        return null;
    }

    public void reset() {
        this.fModelConverters = null;
    }

    public List<IModelConverter> getConverters() {
        if (this.fModelConverters == null) {
            this.init();
        }
        return this.fModelConverters;
    }

    public IModelConverter getLoadConverter(XMLResource xmlResource, Map<?, ?> options) {
        for (IModelConverter converter : this.getConverters()) {
            if (!converter.isLoadConverterFor(xmlResource, options)) continue;
            return converter;
        }
        return null;
    }

    public IModelConverter getSaveConverter(XMLResource xmlResource, Map<?, ?> options) {
        for (IModelConverter converter : this.getConverters()) {
            if (!converter.isSaveConverterFor(xmlResource, options)) continue;
            return converter;
        }
        return null;
    }

    public IModelConverterDescription getConverterDescription(IModelConverter converter) {
        return this.fConverterDescriptions.get(converter);
    }

    public Collection<IModelConverterDescription> getConverterDescriptions(IMetaModelDescriptor targetResourceVersion) {
        ArrayList<IModelConverterDescription> converters = new ArrayList<IModelConverterDescription>();
        for (IModelConverter converter : this.getConverters()) {
            if (converter.getResourceVersionDescriptor() != targetResourceVersion) continue;
            converters.add(this.getConverterDescription(converter));
        }
        return converters;
    }
}

