/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.events;

import org.eclipse.core.resources.IResource;

public class LifecycleEvent {
    public static final int PRE_PROJECT_CLOSE = 1;
    public static final int POST_PROJECT_CHANGE = 2;
    public static final int PRE_PROJECT_COPY = 4;
    public static final int PRE_PROJECT_CREATE = 8;
    public static final int PRE_PROJECT_DELETE = 16;
    public static final int PRE_PROJECT_OPEN = 32;
    public static final int PRE_PROJECT_MOVE = 64;
    public static final int PRE_LINK_COPY = 256;
    public static final int PRE_LINK_CREATE = 512;
    public static final int PRE_LINK_DELETE = 1024;
    public static final int PRE_LINK_MOVE = 2048;
    public static final int PRE_REFRESH = 4096;
    public static final int PRE_GROUP_COPY = 8192;
    public static final int PRE_GROUP_CREATE = 16384;
    public static final int PRE_GROUP_DELETE = 32768;
    public static final int PRE_GROUP_MOVE = 65536;
    public static final int PRE_FILTER_ADD = 131072;
    public static final int PRE_FILTER_REMOVE = 262144;
    public static final int PRE_LINK_CHANGE = 524288;
    public int kind;
    public IResource resource;
    public IResource newResource;
    public int updateFlags;
    private static final LifecycleEvent instance = new LifecycleEvent();

    private LifecycleEvent() {
    }

    public static LifecycleEvent newEvent(int kind, IResource resource) {
        LifecycleEvent.instance.kind = kind;
        LifecycleEvent.instance.resource = resource;
        LifecycleEvent.instance.newResource = null;
        LifecycleEvent.instance.updateFlags = 0;
        return instance;
    }

    public static LifecycleEvent newEvent(int kind, IResource oldResource, IResource newResource, int updateFlags) {
        LifecycleEvent.instance.kind = kind;
        LifecycleEvent.instance.resource = oldResource;
        LifecycleEvent.instance.newResource = newResource;
        LifecycleEvent.instance.updateFlags = updateFlags;
        return instance;
    }
}

