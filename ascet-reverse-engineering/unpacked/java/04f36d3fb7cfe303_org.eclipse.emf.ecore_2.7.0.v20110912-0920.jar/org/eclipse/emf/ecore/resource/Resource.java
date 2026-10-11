/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.TreeIterator
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.resource;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.TreeIterator;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.resource.impl.ResourceFactoryRegistryImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Resource
extends Notifier {
    public static final int RESOURCE__RESOURCE_SET = 0;
    public static final int RESOURCE__URI = 1;
    public static final int RESOURCE__CONTENTS = 2;
    public static final int RESOURCE__IS_MODIFIED = 3;
    public static final int RESOURCE__IS_LOADED = 4;
    public static final int RESOURCE__IS_TRACKING_MODIFICATION = 5;
    public static final int RESOURCE__ERRORS = 6;
    public static final int RESOURCE__WARNINGS = 7;
    public static final int RESOURCE__TIME_STAMP = 8;
    public static final String OPTION_CIPHER = "CIPHER";
    public static final String OPTION_ZIP = "ZIP";
    public static final String OPTION_SAVE_ONLY_IF_CHANGED = "SAVE_ONLY_IF_CHANGED";
    public static final String OPTION_SAVE_ONLY_IF_CHANGED_MEMORY_BUFFER = "MEMORY_BUFFER";
    public static final String OPTION_SAVE_ONLY_IF_CHANGED_FILE_BUFFER = "FILE_BUFFER";

    public ResourceSet getResourceSet();

    public URI getURI();

    public void setURI(URI var1);

    public long getTimeStamp();

    public void setTimeStamp(long var1);

    public EList<EObject> getContents();

    public TreeIterator<EObject> getAllContents();

    public String getURIFragment(EObject var1);

    public EObject getEObject(String var1);

    public void save(Map<?, ?> var1) throws IOException;

    public void load(Map<?, ?> var1) throws IOException;

    public void save(OutputStream var1, Map<?, ?> var2) throws IOException;

    public void load(InputStream var1, Map<?, ?> var2) throws IOException;

    public boolean isTrackingModification();

    public void setTrackingModification(boolean var1);

    public boolean isModified();

    public void setModified(boolean var1);

    public boolean isLoaded();

    public void unload();

    public void delete(Map<?, ?> var1) throws IOException;

    public EList<Diagnostic> getErrors();

    public EList<Diagnostic> getWarnings();

    public static interface Diagnostic {
        public String getMessage();

        public String getLocation();

        public int getLine();

        public int getColumn();
    }

    public static interface Factory {
        public Resource createResource(URI var1);

        public static interface Descriptor {
            public Factory createFactory();
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        public static interface Registry {
            public static final String DEFAULT_EXTENSION = "*";
            public static final String DEFAULT_CONTENT_TYPE_IDENTIFIER = "*";
            public static final Registry INSTANCE = new ResourceFactoryRegistryImpl();

            public Factory getFactory(URI var1);

            public Factory getFactory(URI var1, String var2);

            public Map<String, Object> getProtocolToFactoryMap();

            public Map<String, Object> getExtensionToFactoryMap();

            public Map<String, Object> getContentTypeToFactoryMap();
        }
    }

    public static class IOWrappedException
    extends IOException {
        static final long serialVersionUID = 1L;

        public IOWrappedException(Exception exception) {
            super(exception.getLocalizedMessage());
            this.initCause(exception);
        }

        public IOWrappedException(Throwable throwable) {
            super(throwable.getLocalizedMessage());
            this.initCause(throwable);
        }

        @Deprecated
        public Exception getWrappedException() {
            return (Exception)this.getCause();
        }
    }

    public static interface Internal
    extends Resource {
        public void attached(EObject var1);

        public void detached(EObject var1);

        public NotificationChain basicSetResourceSet(ResourceSet var1, NotificationChain var2);

        public boolean isLoading();
    }
}

