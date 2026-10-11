/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.content.IContentType
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.impl.AdapterImpl
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.resource.Resource
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package org.eclipse.emf.transaction;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.impl.AdapterImpl;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.transaction.NotificationFilter;
import org.eclipse.emf.transaction.internal.Tracing;

class ResourceContentTypeFilter
extends NotificationFilter {
    private final IContentType contentType;

    ResourceContentTypeFilter(String contentType) {
        this.contentType = Platform.getContentTypeManager().getContentType(contentType);
        if (this.contentType == null) {
            IllegalArgumentException exc = new IllegalArgumentException("No such content type: " + contentType);
            Tracing.throwing(NotificationFilter.class, "createResourceContentTypeFilter", exc);
            throw exc;
        }
    }

    public boolean matches(Notification notification) {
        boolean result = false;
        IContentType[] actualTypes = this.getContentTypes(notification);
        int i = 0;
        while (!result && i < actualTypes.length) {
            result = actualTypes[i].isKindOf(this.contentType);
            ++i;
        }
        return result;
    }

    private IContentType[] getContentTypes(Notification notification) {
        Object notifier = notification.getNotifier();
        Resource res = null;
        if (notifier instanceof EObject) {
            res = ((EObject)notifier).eResource();
        } else if (notifier instanceof Resource) {
            res = (Resource)notifier;
        }
        IContentType[] result = res == null ? new IContentType[]{} : this.getContentTypes(res);
        return result;
    }

    private IContentType[] getContentTypes(Resource res) {
        class Cache
        extends AdapterImpl {
            private IContentType[] contentTypes;

            Cache(IContentType[] contentTypes) {
                this.contentTypes = contentTypes;
            }

            IContentType[] getContentTypes() {
                return this.contentTypes;
            }

            public boolean isAdapterForType(Object type) {
                return type == Cache.class;
            }

            public void notifyChanged(Notification msg) {
                if (!msg.isTouch()) {
                    this.getTarget().eAdapters().remove((Object)this);
                }
            }
        }
        Cache cache = (Cache)EcoreUtil.getAdapter((List)res.eAdapters(), Cache.class);
        if (cache == null) {
            cache = new Cache(this.computeContentTypes(res));
            res.eAdapters().add((Object)cache);
        }
        return cache.getContentTypes();
    }

    private IContentType[] computeContentTypes(Resource res) {
        IContentType[] result;
        ResourceSet rset = res.getResourceSet();
        if (rset == null) {
            result = new IContentType[]{};
        } else {
            URI uri = res.getURI();
            String filename = uri.trimQuery().lastSegment();
            try {
                InputStream stream = rset.getURIConverter().createInputStream(uri);
                try {
                    try {
                        result = Platform.getContentTypeManager().findContentTypesFor(stream, filename);
                    }
                    catch (IOException e) {
                        Tracing.catching(this.getClass(), "getContentTypes", e);
                        result = new IContentType[]{};
                        stream.close();
                    }
                }
                finally {
                    stream.close();
                }
            }
            catch (IOException e) {
                Tracing.catching(this.getClass(), "getContentTypes", e);
                result = Platform.getContentTypeManager().findContentTypesFor(filename);
            }
        }
        return result;
    }
}

