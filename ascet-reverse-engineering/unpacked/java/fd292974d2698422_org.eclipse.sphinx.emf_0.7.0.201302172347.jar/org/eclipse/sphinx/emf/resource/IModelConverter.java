/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.xmi.XMLHelper
 *  org.eclipse.emf.ecore.xmi.XMLResource
 *  org.eclipse.emf.ecore.xmi.impl.XMLString
 */
package org.eclipse.sphinx.emf.resource;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.xmi.XMLHelper;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.emf.ecore.xmi.impl.XMLString;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.xml.sax.InputSource;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IModelConverter {
    @Deprecated
    public static final String OPTION_RESOURCE_VERSION_DESCRIPTOR = "RESOURCE_VERSION_DESCRIPTOR";

    public IMetaModelDescriptor getMetaModelVersionDescriptor();

    public IMetaModelDescriptor getResourceVersionDescriptor();

    public boolean isLoadConverterFor(XMLResource var1, Map<?, ?> var2);

    public boolean isSaveConverterFor(XMLResource var1, Map<?, ?> var2);

    public InputSource convertLoad(XMLResource var1, InputStream var2, Map<?, ?> var3) throws IOException;

    public void convertSave(XMLString var1, int var2, URI var3, OutputStream var4, String var5, XMLHelper var6, Map<?, ?> var7) throws IOException;

    public void addExtraAttributesToSavedRootElement(XMLString var1, Map<?, ?> var2);

    public void dispose();
}

