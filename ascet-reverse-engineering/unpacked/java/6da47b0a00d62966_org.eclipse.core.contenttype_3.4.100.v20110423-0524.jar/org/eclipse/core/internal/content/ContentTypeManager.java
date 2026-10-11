/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IRegistryChangeEvent
 *  org.eclipse.core.runtime.IRegistryChangeListener
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.InvalidRegistryObjectException
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.IScopeContext
 *  org.eclipse.core.runtime.preferences.InstanceScope
 */
package org.eclipse.core.internal.content;

import java.io.InputStream;
import java.io.Reader;
import org.eclipse.core.internal.content.Activator;
import org.eclipse.core.internal.content.BasicDescription;
import org.eclipse.core.internal.content.ContentMessages;
import org.eclipse.core.internal.content.ContentType;
import org.eclipse.core.internal.content.ContentTypeBuilder;
import org.eclipse.core.internal.content.ContentTypeCatalog;
import org.eclipse.core.internal.content.ContentTypeHandler;
import org.eclipse.core.internal.content.ContentTypeMatcher;
import org.eclipse.core.internal.content.ILazySource;
import org.eclipse.core.internal.content.LazyInputStream;
import org.eclipse.core.internal.content.LazyReader;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IRegistryChangeEvent;
import org.eclipse.core.runtime.IRegistryChangeListener;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.InvalidRegistryObjectException;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.core.runtime.content.IContentTypeManager;
import org.eclipse.core.runtime.content.IContentTypeMatcher;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.IScopeContext;
import org.eclipse.core.runtime.preferences.InstanceScope;

public class ContentTypeManager
extends ContentTypeMatcher
implements IContentTypeManager,
IRegistryChangeListener {
    private static ContentTypeManager instance;
    public static final int BLOCK_SIZE = 1024;
    public static final String CONTENT_TYPE_PREF_NODE = "org.eclipse.core.runtime/content-types";
    private static final String OPTION_DEBUG_CONTENT_TYPES = "org.eclipse.core.contenttype/debug";
    static final boolean DEBUGGING;
    private ContentTypeCatalog catalog;
    private int catalogGeneration;
    protected final ListenerList contentTypeListeners = new ListenerList();

    static {
        DEBUGGING = Activator.getDefault().getBooleanDebugOption(OPTION_DEBUG_CONTENT_TYPES, false);
    }

    public static void startup() {
        ContentTypeManager.getInstance();
    }

    public static void addRegistryChangeListener(IExtensionRegistry registry) {
        if (registry == null) {
            return;
        }
        registry.addRegistryChangeListener((IRegistryChangeListener)ContentTypeManager.getInstance(), "org.eclipse.core.runtime");
        registry.addRegistryChangeListener((IRegistryChangeListener)ContentTypeManager.getInstance(), "org.eclipse.core.contenttype");
    }

    public static void shutdown() {
        instance = null;
    }

    public static void removeRegistryChangeListener(IExtensionRegistry registry) {
        if (registry == null) {
            return;
        }
        ContentTypeManager.getInstance().invalidate();
        registry.removeRegistryChangeListener((IRegistryChangeListener)ContentTypeManager.getInstance());
    }

    public static ContentTypeManager getInstance() {
        if (instance == null) {
            instance = new ContentTypeManager();
        }
        return instance;
    }

    static String getFileExtension(String fileName) {
        int dotPosition = fileName.lastIndexOf(46);
        return dotPosition == -1 || dotPosition == fileName.length() - 1 ? "" : fileName.substring(dotPosition + 1);
    }

    protected static ILazySource readBuffer(InputStream contents) {
        return new LazyInputStream(contents, 1024);
    }

    protected static ILazySource readBuffer(Reader contents) {
        return new LazyReader(contents, 1024);
    }

    public ContentTypeManager() {
        super(null, (IScopeContext)new InstanceScope());
    }

    protected ContentTypeBuilder createBuilder(ContentTypeCatalog newCatalog) {
        return new ContentTypeBuilder(newCatalog);
    }

    public IContentType[] getAllContentTypes() {
        ContentTypeCatalog currentCatalog = this.getCatalog();
        IContentType[] types = currentCatalog.getAllContentTypes();
        IContentType[] result = new IContentType[types.length];
        int generation = currentCatalog.getGeneration();
        int i = 0;
        while (i < result.length) {
            result[i] = new ContentTypeHandler((ContentType)types[i], generation);
            ++i;
        }
        return result;
    }

    protected synchronized ContentTypeCatalog getCatalog() {
        if (this.catalog != null) {
            return this.catalog;
        }
        ContentTypeCatalog newCatalog = new ContentTypeCatalog(this, this.catalogGeneration++);
        ContentTypeBuilder builder = this.createBuilder(newCatalog);
        try {
            builder.buildCatalog();
            this.catalog = newCatalog;
        }
        catch (InvalidRegistryObjectException invalidRegistryObjectException) {}
        newCatalog.organize();
        return newCatalog;
    }

    public IContentType getContentType(String contentTypeIdentifier) {
        ContentTypeCatalog currentCatalog = this.getCatalog();
        ContentType type = currentCatalog.getContentType(contentTypeIdentifier);
        return type == null ? null : new ContentTypeHandler(type, currentCatalog.getGeneration());
    }

    public IContentTypeMatcher getMatcher(IContentTypeManager.ISelectionPolicy customPolicy, IScopeContext context) {
        return new ContentTypeMatcher(customPolicy, context == null ? this.getContext() : context);
    }

    IEclipsePreferences getPreferences() {
        return this.getPreferences(this.getContext());
    }

    IEclipsePreferences getPreferences(IScopeContext context) {
        return context.getNode(CONTENT_TYPE_PREF_NODE);
    }

    public void registryChanged(IRegistryChangeEvent event) {
        if (event.getExtensionDeltas("org.eclipse.core.runtime", "contentTypes").length == 0 && event.getExtensionDeltas("org.eclipse.core.contenttype", "contentTypes").length == 0) {
            return;
        }
        this.invalidate();
    }

    synchronized void invalidate() {
        if (DEBUGGING && this.catalog != null) {
            ContentMessages.message("Registry discarded");
        }
        this.catalog = null;
    }

    public void addContentTypeChangeListener(IContentTypeManager.IContentTypeChangeListener listener) {
        this.contentTypeListeners.add((Object)listener);
    }

    public void removeContentTypeChangeListener(IContentTypeManager.IContentTypeChangeListener listener) {
        this.contentTypeListeners.remove((Object)listener);
    }

    public void fireContentTypeChangeEvent(ContentType type) {
        Object[] listeners = this.contentTypeListeners.getListeners();
        ContentTypeHandler eventObject = new ContentTypeHandler(type, type.getCatalog().getGeneration());
        int i = 0;
        while (i < listeners.length) {
            final IContentTypeManager.ContentTypeChangeEvent event = new IContentTypeManager.ContentTypeChangeEvent(eventObject);
            final IContentTypeManager.IContentTypeChangeListener listener = (IContentTypeManager.IContentTypeChangeListener)listeners[i];
            ISafeRunnable job = new ISafeRunnable(){

                public void handleException(Throwable exception) {
                }

                public void run() throws Exception {
                    listener.contentTypeChanged(event);
                }
            };
            SafeRunner.run((ISafeRunnable)job);
            ++i;
        }
    }

    public IContentDescription getSpecificDescription(BasicDescription description) {
        return description;
    }
}

