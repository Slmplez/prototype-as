/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterImpl
 *  org.eclipse.emf.common.util.BasicDiagnostic
 *  org.eclipse.emf.common.util.Diagnostic
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.xmi.XMLResource
 *  org.eclipse.sphinx.platform.util.ReflectUtil
 */
package org.eclipse.sphinx.emf.resource;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterImpl;
import org.eclipse.emf.common.util.BasicDiagnostic;
import org.eclipse.emf.common.util.Diagnostic;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.xmi.XMLResource;
import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.emf.resource.ExtendedResource;
import org.eclipse.sphinx.platform.util.ReflectUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ExtendedResourceAdapter
extends AdapterImpl
implements ExtendedResource {
    private static final URI EMPTY_URI = URI.createURI((String)"");
    protected Map<Object, Object> problemHandlingOptions;

    @Override
    public Map<Object, Object> getDefaultLoadOptions() {
        Map defaultLoadOptions = null;
        Resource targetResource = (Resource)this.getTarget();
        if (targetResource instanceof XMLResource) {
            defaultLoadOptions = ((XMLResource)targetResource).getDefaultLoadOptions();
        } else {
            try {
                defaultLoadOptions = (Map)ReflectUtil.getInvisibleFieldValue((Object)targetResource, (String)"defaultLoadOptions");
            }
            catch (Exception exception) {}
        }
        return defaultLoadOptions != null ? defaultLoadOptions : new HashMap();
    }

    @Override
    public Map<Object, Object> getDefaultSaveOptions() {
        Map defaultSaveOptions = null;
        Resource targetResource = (Resource)this.getTarget();
        if (targetResource instanceof XMLResource) {
            defaultSaveOptions = ((XMLResource)targetResource).getDefaultLoadOptions();
        } else {
            try {
                defaultSaveOptions = (Map)ReflectUtil.getInvisibleFieldValue((Object)targetResource, (String)"defaultSaveOptions");
            }
            catch (Exception exception) {}
        }
        return defaultSaveOptions != null ? defaultSaveOptions : new HashMap();
    }

    @Override
    public Map<Object, Object> getProblemHandlingOptions() {
        if (this.problemHandlingOptions == null) {
            this.problemHandlingOptions = new HashMap<Object, Object>();
            this.problemHandlingOptions.put("MAX_PROBLEM_MARKER_COUNT", OPTION_MAX_PROBLEM_MARKER_COUNT_DEFAULT);
            this.problemHandlingOptions.put("XML_WELLFORMEDNESS_PROBLEM_FORMAT_STRING", OPTION_XML_WELLFORMEDNESS_PROBLEM_FORMAT_STRING_DEFAULT);
            this.problemHandlingOptions.put("XML_VALIDITY_PROBLEM_FORMAT_STRING", OPTION_XML_VALIDITY_PROBLEM_FORMAT_STRING_DEFAULT);
        }
        return this.problemHandlingOptions;
    }

    @Override
    public void unloaded(EObject eObject) {
        if (this.getDefaultLoadOptions().get("UNLOAD_MEMORY_OPTIMIZED") == Boolean.TRUE) {
            ((InternalEObject)eObject).eSetProxyURI(EMPTY_URI);
        } else if (!eObject.eIsProxy()) {
            ((InternalEObject)eObject).eSetProxyURI(this.getURI(eObject));
        }
        eObject.eAdapters().clear();
    }

    @Override
    public URI getURI(EObject eObject) {
        return this.getURI(null, null, eObject);
    }

    @Override
    public URI getURI(EObject oldOwner, EStructuralFeature oldFeature, EObject eObject) {
        Resource resource = (Resource)this.getTarget();
        if (eObject.eResource() == null && oldOwner != null && oldFeature != null) {
            String id = EcoreUtil.getID((EObject)eObject);
            if (id != null) {
                return resource.getURI().appendFragment(id);
            }
            URI oldOwnerURI = EcoreUtil.getURI((EObject)oldOwner);
            String oldOwnerURIFragment = oldOwnerURI.fragment();
            EObject eObjectRootContainer = EcoreUtil.getRootContainer((EObject)eObject);
            String eObjectRootContainerURIFragmentSegment = ((InternalEObject)oldOwner).eURIFragmentSegment(oldFeature, eObjectRootContainer);
            ArrayList<String> eObjectURIFragmentSegments = new ArrayList<String>();
            InternalEObject internalEObject = (InternalEObject)eObject;
            InternalEObject container = internalEObject.eInternalContainer();
            while (container != null) {
                eObjectURIFragmentSegments.add(container.eURIFragmentSegment(internalEObject.eContainingFeature(), (EObject)internalEObject));
                internalEObject = container;
                container = internalEObject.eInternalContainer();
            }
            StringBuilder oldEObjectURIFragment = new StringBuilder();
            oldEObjectURIFragment.append(oldOwnerURIFragment);
            oldEObjectURIFragment.append("/");
            oldEObjectURIFragment.append(eObjectRootContainerURIFragmentSegment);
            int i = eObjectURIFragmentSegments.size() - 1;
            while (i >= 0) {
                oldEObjectURIFragment.append("/");
                oldEObjectURIFragment.append((String)eObjectURIFragmentSegments.get(i));
                --i;
            }
            return oldOwnerURI.trimFragment().appendFragment(oldEObjectURIFragment.toString());
        }
        return resource.getURI().appendFragment(resource.getURIFragment(eObject));
    }

    @Override
    public Diagnostic validateURI(String uri) {
        Assert.isNotNull((Object)uri);
        try {
            URI.createURI((String)uri, (boolean)true);
        }
        catch (IllegalArgumentException ex) {
            return new BasicDiagnostic(Activator.getPlugin().getSymbolicName(), 4, ex.getMessage(), new Object[0]);
        }
        return Diagnostic.OK_INSTANCE;
    }

    public boolean isAdapterForType(Object type) {
        return type == ExtendedResource.class;
    }

    public void setTarget(Notifier newTarget) {
        Assert.isLegal((newTarget == null || newTarget instanceof Resource ? 1 : 0) != 0);
        super.setTarget(newTarget);
    }
}

