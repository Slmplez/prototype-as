/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.AdapterFactory
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.TreeIterator
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.resource;

import java.util.Map;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.TreeIterator;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.URIConverter;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ResourceSet
extends Notifier {
    public static final int RESOURCE_SET__RESOURCES = 0;

    public EList<Resource> getResources();

    public TreeIterator<Notifier> getAllContents();

    public EList<AdapterFactory> getAdapterFactories();

    public Map<Object, Object> getLoadOptions();

    public EObject getEObject(URI var1, boolean var2);

    public Resource getResource(URI var1, boolean var2);

    public Resource createResource(URI var1);

    public Resource createResource(URI var1, String var2);

    public Resource.Factory.Registry getResourceFactoryRegistry();

    public void setResourceFactoryRegistry(Resource.Factory.Registry var1);

    public URIConverter getURIConverter();

    public void setURIConverter(URIConverter var1);

    public EPackage.Registry getPackageRegistry();

    public void setPackageRegistry(EPackage.Registry var1);
}

