/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.registry;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.core.internal.registry.ExtensionHandle;
import org.eclipse.core.internal.registry.ExtensionPoint;
import org.eclipse.core.internal.registry.ExtensionPointHandle;
import org.eclipse.core.internal.registry.IObjectManager;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;

public class CombinedEventDelta {
    private final boolean addition;
    private IObjectManager objectManager;
    private static final int arrayGrowthSpace = 5;
    private Map extensionsByID = null;
    private Map extPointsByID = null;
    private ArrayList allExtensions = null;
    private ArrayList allExtensionPoints = null;

    private CombinedEventDelta(boolean addition) {
        this.addition = addition;
    }

    public static CombinedEventDelta recordAddition() {
        return new CombinedEventDelta(true);
    }

    public static CombinedEventDelta recordRemoval() {
        return new CombinedEventDelta(false);
    }

    public boolean isAddition() {
        return this.addition;
    }

    public boolean isRemoval() {
        return !this.addition;
    }

    public void setObjectManager(IObjectManager manager) {
        this.objectManager = manager;
    }

    public IObjectManager getObjectManager() {
        return this.objectManager;
    }

    private List getExtensionsBucket(String id) {
        ArrayList extensions;
        if (this.extensionsByID == null) {
            this.extensionsByID = new HashMap();
        }
        if ((extensions = (ArrayList)this.extensionsByID.get(id)) == null) {
            extensions = new ArrayList(5);
            this.extensionsByID.put(id, extensions);
        }
        return extensions;
    }

    private List getExtPointsBucket(String id) {
        ArrayList extensionPoints;
        if (this.extPointsByID == null) {
            this.extPointsByID = new HashMap();
        }
        if ((extensionPoints = (ArrayList)this.extPointsByID.get(id)) == null) {
            extensionPoints = new ArrayList(5);
            this.extPointsByID.put(id, extensionPoints);
        }
        return extensionPoints;
    }

    private List getExtPointsGlobal() {
        if (this.allExtensionPoints == null) {
            this.allExtensionPoints = new ArrayList();
        }
        return this.allExtensionPoints;
    }

    private List getExtensionsGlobal() {
        if (this.allExtensions == null) {
            this.allExtensions = new ArrayList();
        }
        return this.allExtensions;
    }

    public void rememberExtensionPoint(ExtensionPoint extensionPoint) {
        String bucketId = extensionPoint.getUniqueIdentifier();
        Integer extPt = new Integer(extensionPoint.getObjectId());
        this.getExtPointsBucket(bucketId).add(extPt);
        this.getExtPointsGlobal().add(extPt);
    }

    public void rememberExtension(ExtensionPoint extensionPoint, int ext) {
        String bucketId = extensionPoint.getUniqueIdentifier();
        Integer extension = new Integer(ext);
        this.getExtensionsBucket(bucketId).add(extension);
        this.getExtensionsGlobal().add(extension);
    }

    public void rememberExtensions(ExtensionPoint extensionPoint, int[] exts) {
        if (exts == null) {
            return;
        }
        if (exts.length == 0) {
            return;
        }
        int i = 0;
        while (i < exts.length) {
            this.rememberExtension(extensionPoint, exts[i]);
            ++i;
        }
    }

    public IExtensionPoint[] getExtensionPoints(String id) {
        List extensionPoints = null;
        if (id != null && this.extPointsByID != null) {
            extensionPoints = (List)this.extPointsByID.get(id);
        } else if (id == null) {
            extensionPoints = this.allExtensionPoints;
        }
        if (extensionPoints == null) {
            return null;
        }
        int size = extensionPoints.size();
        ArrayList<ExtensionPointHandle> result = new ArrayList<ExtensionPointHandle>(size);
        int i = 0;
        while (i < size) {
            Integer extPt = (Integer)extensionPoints.get(i);
            ExtensionPointHandle extensionPoint = new ExtensionPointHandle(this.objectManager, extPt);
            result.add(extensionPoint);
            ++i;
        }
        if (result.size() == 0) {
            return null;
        }
        return result.toArray(new IExtensionPoint[result.size()]);
    }

    public IExtension[] getExtensions(String id) {
        List extensions = null;
        if (id != null && this.extensionsByID != null) {
            extensions = (List)this.extensionsByID.get(id);
        } else if (id == null) {
            extensions = this.allExtensions;
        }
        if (extensions == null) {
            return null;
        }
        int size = extensions.size();
        ArrayList<ExtensionHandle> result = new ArrayList<ExtensionHandle>(size);
        int i = 0;
        while (i < size) {
            Integer ext = (Integer)extensions.get(i);
            ExtensionHandle extension = new ExtensionHandle(this.objectManager, ext);
            result.add(extension);
            ++i;
        }
        return result.toArray(new IExtension[result.size()]);
    }
}

