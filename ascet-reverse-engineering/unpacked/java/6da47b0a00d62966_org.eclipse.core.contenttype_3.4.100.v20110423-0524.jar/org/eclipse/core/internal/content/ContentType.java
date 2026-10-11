/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.RuntimeLog
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.InvalidRegistryObjectException
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.preferences.IScopeContext
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.service.prefs.BackingStoreException
 *  org.osgi.service.prefs.Preferences
 */
package org.eclipse.core.internal.content;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.internal.content.BasicDescription;
import org.eclipse.core.internal.content.ContentDescription;
import org.eclipse.core.internal.content.ContentMessages;
import org.eclipse.core.internal.content.ContentTypeCatalog;
import org.eclipse.core.internal.content.ContentTypeHandler;
import org.eclipse.core.internal.content.ContentTypeManager;
import org.eclipse.core.internal.content.ContentTypeSettings;
import org.eclipse.core.internal.content.DefaultDescription;
import org.eclipse.core.internal.content.FileSpec;
import org.eclipse.core.internal.content.IContentTypeInfo;
import org.eclipse.core.internal.content.ILazySource;
import org.eclipse.core.internal.content.LowLevelIOException;
import org.eclipse.core.internal.content.Util;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.InvalidRegistryObjectException;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.content.IContentDescriber;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.core.runtime.content.IContentTypeSettings;
import org.eclipse.core.runtime.content.ITextContentDescriber;
import org.eclipse.core.runtime.preferences.IScopeContext;
import org.eclipse.osgi.util.NLS;
import org.osgi.service.prefs.BackingStoreException;
import org.osgi.service.prefs.Preferences;

public final class ContentType
implements IContentType,
IContentTypeInfo {
    static final byte ASSOCIATED_BY_EXTENSION = 2;
    static final byte ASSOCIATED_BY_NAME = 1;
    private static final String DESCRIBER_ELEMENT = "describer";
    private static ArrayList EMPTY_LIST = new ArrayList(0);
    private static final Object INHERITED_DESCRIBER = "INHERITED DESCRIBER";
    private static final Object NO_DESCRIBER = "NO DESCRIBER";
    static final byte NOT_ASSOCIATED = 0;
    public static final String PREF_DEFAULT_CHARSET = "charset";
    public static final String PREF_FILE_EXTENSIONS = "file-extensions";
    public static final String PREF_FILE_NAMES = "file-names";
    static final byte PRIORITY_HIGH = 1;
    static final byte PRIORITY_LOW = -1;
    static final byte PRIORITY_NORMAL = 0;
    static final int SPEC_PRE_DEFINED = 1;
    static final int SPEC_USER_DEFINED = 2;
    static final byte STATUS_INVALID = 2;
    static final byte STATUS_UNKNOWN = 0;
    static final byte STATUS_VALID = 1;
    private String aliasTargetId;
    private String baseTypeId;
    private boolean builtInAssociations = false;
    private ContentTypeCatalog catalog;
    private IConfigurationElement contentTypeElement;
    private DefaultDescription defaultDescription;
    private Map defaultProperties;
    private Object describer;
    private ArrayList fileSpecs = EMPTY_LIST;
    String id;
    private ContentTypeManager manager;
    private String name;
    private byte priority;
    private ContentType target;
    private String userCharset;
    private byte validation = 0;
    private ContentType baseType;
    private byte depth = (byte)-1;

    public static ContentType createContentType(ContentTypeCatalog catalog, String uniqueId, String name, byte priority, String[] fileExtensions, String[] fileNames, String baseTypeId, String aliasTargetId, Map defaultProperties, IConfigurationElement contentTypeElement) {
        ContentType contentType = new ContentType(catalog.getManager());
        contentType.catalog = catalog;
        contentType.defaultDescription = new DefaultDescription(contentType);
        contentType.id = uniqueId;
        contentType.name = name;
        contentType.priority = priority;
        if (fileExtensions != null && fileExtensions.length > 0 || fileNames != null && fileNames.length > 0) {
            contentType.builtInAssociations = true;
            contentType.fileSpecs = new ArrayList(fileExtensions.length + fileNames.length);
            int i = 0;
            while (i < fileNames.length) {
                contentType.internalAddFileSpec(fileNames[i], 5);
                ++i;
            }
            i = 0;
            while (i < fileExtensions.length) {
                contentType.internalAddFileSpec(fileExtensions[i], 9);
                ++i;
            }
        }
        contentType.defaultProperties = defaultProperties;
        contentType.contentTypeElement = contentTypeElement;
        contentType.baseTypeId = baseTypeId;
        contentType.aliasTargetId = aliasTargetId;
        return contentType;
    }

    static FileSpec createFileSpec(String fileSpec, int type) {
        return new FileSpec(fileSpec, type);
    }

    static String getPreferenceKey(int flags) {
        if ((flags & 8) != 0) {
            return PREF_FILE_EXTENSIONS;
        }
        if ((flags & 4) != 0) {
            return PREF_FILE_NAMES;
        }
        throw new IllegalArgumentException("Unknown type: " + flags);
    }

    private static String getValidationString(byte validation) {
        return validation == 1 ? "VALID" : (validation == 2 ? "INVALID" : "UNKNOWN");
    }

    public static void log(String message, Throwable reason) {
        Status status = new Status(4, "org.eclipse.core.contenttype", 0, message, reason instanceof CoreException ? null : reason);
        RuntimeLog.log((IStatus)status);
    }

    public ContentType(ContentTypeManager manager) {
        this.manager = manager;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void addFileSpec(String fileSpec, int type) throws CoreException {
        Object[] userSet;
        Assert.isLegal((type == 8 || type == 4 ? 1 : 0) != 0, (String)("Unknown type: " + type));
        ContentType contentType = this;
        synchronized (contentType) {
            if (!this.internalAddFileSpec(fileSpec, type | 2)) {
                return;
            }
            userSet = this.getFileSpecs(type | 1);
        }
        Preferences contentTypeNode = this.manager.getPreferences().node(this.id);
        String newValue = Util.toListString(userSet);
        Assert.isNotNull((Object)newValue);
        ContentType.setPreference(contentTypeNode, ContentType.getPreferenceKey(type), newValue);
        try {
            contentTypeNode.flush();
        }
        catch (BackingStoreException bse) {
            String message = NLS.bind((String)ContentMessages.content_errorSavingSettings, (Object)this.id);
            Status status = new Status(4, "org.eclipse.core.contenttype", 0, message, (Throwable)bse);
            throw new CoreException((IStatus)status);
        }
        this.manager.fireContentTypeChangeEvent(this);
    }

    int describe(IContentDescriber selectedDescriber, ILazySource contents, ContentDescription description) throws IOException {
        try {
            int n = contents.isText() ? ((ITextContentDescriber)selectedDescriber).describe((Reader)((Object)contents), (IContentDescription)description) : selectedDescriber.describe((InputStream)((Object)contents), description);
            return n;
        }
        catch (RuntimeException re) {
            this.invalidateDescriber(re);
        }
        catch (Error e) {
            this.invalidateDescriber(e);
            throw e;
        }
        catch (LowLevelIOException llioe) {
            throw llioe.getActualException();
        }
        catch (IOException ioe) {
            if (ContentTypeManager.DEBUGGING) {
                String message = NLS.bind((String)ContentMessages.content_errorReadingContents, (Object)this.id);
                ContentType.log(message, ioe);
            }
            return 1;
        }
        finally {
            contents.rewind();
        }
        return 0;
    }

    public boolean equals(Object another) {
        if (another instanceof ContentType) {
            return this.id.equals(((ContentType)another).id);
        }
        if (another instanceof ContentTypeHandler) {
            return this.id.equals(((ContentTypeHandler)another).id);
        }
        return false;
    }

    public String getAliasTargetId() {
        return this.aliasTargetId;
    }

    public IContentType getBaseType() {
        return this.baseType;
    }

    String getBaseTypeId() {
        return this.baseTypeId;
    }

    public ContentTypeCatalog getCatalog() {
        return this.catalog;
    }

    public ContentType getContentType() {
        return this;
    }

    public String getDefaultCharset() {
        return this.getDefaultProperty(IContentDescription.CHARSET);
    }

    public IContentDescription getDefaultDescription() {
        return this.defaultDescription;
    }

    public String getDefaultProperty(QualifiedName key) {
        String propertyValue = this.internalGetDefaultProperty(key);
        if ("".equals(propertyValue)) {
            return null;
        }
        return propertyValue;
    }

    byte getDepth() {
        byte tmpDepth = this.depth;
        if (tmpDepth >= 0) {
            return tmpDepth;
        }
        if (this.baseType == null) {
            this.depth = 0;
            return 0;
        }
        this.depth = (byte)(this.baseType == null ? 0 : 1 + this.baseType.getDepth());
        return this.depth;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public IContentDescriber getDescriber() {
        try {
            Object tmpDescriber = this.describer;
            if (tmpDescriber != null) {
                if (INHERITED_DESCRIBER == tmpDescriber) {
                    return this.baseType.getDescriber();
                }
                if (NO_DESCRIBER == tmpDescriber) {
                    return null;
                }
                IContentDescriber iContentDescriber = (IContentDescriber)tmpDescriber;
                return iContentDescriber;
            }
            String describerValue = this.contentTypeElement.getAttributeAsIs(DESCRIBER_ELEMENT);
            if (describerValue != null || this.contentTypeElement.getChildren(DESCRIBER_ELEMENT).length > 0) {
                try {
                    if ("".equals(describerValue)) {
                        this.describer = NO_DESCRIBER;
                        return null;
                    }
                    this.describer = tmpDescriber = this.contentTypeElement.createExecutableExtension(DESCRIBER_ELEMENT);
                    return (IContentDescriber)tmpDescriber;
                }
                catch (CoreException ce) {
                    return this.invalidateDescriber(ce);
                }
            }
        }
        catch (InvalidRegistryObjectException invalidRegistryObjectException) {
            this.manager.invalidate();
            return null;
        }
        if (this.baseType == null) {
            this.describer = NO_DESCRIBER;
            return null;
        }
        this.describer = INHERITED_DESCRIBER;
        return this.baseType.getDescriber();
    }

    public IContentDescription getDescriptionFor(InputStream contents, QualifiedName[] options) throws IOException {
        return this.internalGetDescriptionFor(ContentTypeManager.readBuffer(contents), options);
    }

    public IContentDescription getDescriptionFor(Reader contents, QualifiedName[] options) throws IOException {
        return this.internalGetDescriptionFor(ContentTypeManager.readBuffer(contents), options);
    }

    public String[] getFileSpecs(int typeMask) {
        if (this.fileSpecs.isEmpty()) {
            return new String[0];
        }
        typeMask ^= 3;
        ArrayList<String> result = new ArrayList<String>(this.fileSpecs.size());
        Iterator i = this.fileSpecs.iterator();
        while (i.hasNext()) {
            FileSpec spec = (FileSpec)i.next();
            if ((spec.getType() & typeMask) != spec.getType()) continue;
            result.add(spec.getText());
        }
        return result.toArray(new String[result.size()]);
    }

    public String getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    byte getPriority() {
        return this.priority;
    }

    public IContentTypeSettings getSettings(IScopeContext context) {
        if (context == null || context.equals(this.manager.getContext())) {
            return this;
        }
        return new ContentTypeSettings(this, context);
    }

    ContentType getAliasTarget(boolean self) {
        return self && this.target == null ? this : this.target;
    }

    byte getValidation() {
        return this.validation;
    }

    boolean hasBuiltInAssociations() {
        return this.builtInAssociations;
    }

    boolean hasFileSpec(IScopeContext context, String text, int typeMask) {
        if (context.equals(this.manager.getContext()) || (typeMask & 2) != 0) {
            return this.hasFileSpec(text, typeMask, false);
        }
        String[] fileSpecs = ContentTypeSettings.getFileSpecs(context, this.id, typeMask);
        int i = 0;
        while (i < fileSpecs.length) {
            if (text.equalsIgnoreCase(fileSpecs[i])) {
                return true;
            }
            ++i;
        }
        return this.hasFileSpec(text, typeMask | 1, false);
    }

    boolean hasFileSpec(String text, int typeMask, boolean strict) {
        if (this.fileSpecs.isEmpty()) {
            return false;
        }
        Iterator i = this.fileSpecs.iterator();
        while (i.hasNext()) {
            FileSpec spec = (FileSpec)i.next();
            if (!spec.equals(text, typeMask, strict)) continue;
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.id.hashCode();
    }

    boolean internalAddFileSpec(String fileSpec, int typeMask) {
        if (this.hasFileSpec(fileSpec, typeMask, false)) {
            return false;
        }
        FileSpec newFileSpec = ContentType.createFileSpec(fileSpec, typeMask);
        if ((typeMask & 2) == 0) {
            if (this.fileSpecs.isEmpty()) {
                this.fileSpecs = new ArrayList(3);
            }
            this.fileSpecs.add(newFileSpec);
            return true;
        }
        ArrayList tmpFileSpecs = (ArrayList)this.fileSpecs.clone();
        tmpFileSpecs.add(newFileSpec);
        this.catalog.associate(this, newFileSpec.getText(), newFileSpec.getType());
        this.fileSpecs = tmpFileSpecs;
        return true;
    }

    String internalGetDefaultProperty(QualifiedName key) {
        if (this.userCharset != null && key.equals((Object)IContentDescription.CHARSET)) {
            return this.userCharset;
        }
        String defaultValue = this.basicGetDefaultProperty(key);
        if (defaultValue != null) {
            return defaultValue;
        }
        return this.baseType == null ? null : this.baseType.internalGetDefaultProperty(key);
    }

    String basicGetDefaultProperty(QualifiedName key) {
        return this.defaultProperties == null ? null : (String)this.defaultProperties.get(key);
    }

    BasicDescription internalGetDescriptionFor(ILazySource buffer, QualifiedName[] options) throws IOException {
        if (buffer == null) {
            return this.defaultDescription;
        }
        IContentDescriber tmpDescriber = this.getDescriber();
        if (tmpDescriber == null) {
            return this.defaultDescription;
        }
        if (buffer.isText() && !(tmpDescriber instanceof ITextContentDescriber)) {
            throw new UnsupportedOperationException();
        }
        ContentDescription description = new ContentDescription(options, this);
        if (this.describe(tmpDescriber, buffer, description) == 0) {
            return null;
        }
        if (!description.isSet()) {
            return this.defaultDescription;
        }
        description.markImmutable();
        return description;
    }

    byte internalIsAssociatedWith(String fileName, IScopeContext context) {
        if (this.hasFileSpec(context, fileName, 4)) {
            return 1;
        }
        String fileExtension = ContentTypeManager.getFileExtension(fileName);
        if (this.hasFileSpec(context, fileExtension, 8)) {
            return 2;
        }
        if (!this.hasBuiltInAssociations() && this.baseType != null) {
            return this.baseType.internalIsAssociatedWith(fileName, context);
        }
        return 0;
    }

    boolean internalRemoveFileSpec(String fileSpec, int typeMask) {
        if (this.fileSpecs.isEmpty()) {
            return false;
        }
        ArrayList tmpFileSpecs = (ArrayList)this.fileSpecs.clone();
        Iterator i = tmpFileSpecs.iterator();
        while (i.hasNext()) {
            FileSpec spec = (FileSpec)i.next();
            if (spec.getType() != typeMask || !fileSpec.equals(spec.getText())) continue;
            i.remove();
            this.catalog.dissociate(this, spec.getText(), spec.getType());
            this.fileSpecs = tmpFileSpecs;
            return true;
        }
        return false;
    }

    public IContentDescriber invalidateDescriber(Throwable reason) {
        String message = NLS.bind((String)ContentMessages.content_invalidContentDescriber, (Object)this.id);
        ContentType.log(message, reason);
        this.describer = new InvalidDescriber();
        return (IContentDescriber)this.describer;
    }

    boolean isAlias() {
        return this.target != null;
    }

    public boolean isAssociatedWith(String fileName) {
        return this.isAssociatedWith(fileName, this.manager.getContext());
    }

    public boolean isAssociatedWith(String fileName, IScopeContext context) {
        return this.internalIsAssociatedWith(fileName, context) != 0;
    }

    public boolean isKindOf(IContentType another) {
        if (another == null) {
            return false;
        }
        if (this == another) {
            return true;
        }
        return this.baseType != null && this.baseType.isKindOf(another);
    }

    boolean isValid() {
        return this.validation == 1;
    }

    void processPreferences(Preferences contentTypeNode) {
        this.userCharset = contentTypeNode.get(PREF_DEFAULT_CHARSET, null);
        String userSetFileNames = contentTypeNode.get(PREF_FILE_NAMES, null);
        String[] fileNames = Util.parseItems(userSetFileNames);
        int i = 0;
        while (i < fileNames.length) {
            this.internalAddFileSpec(fileNames[i], 6);
            ++i;
        }
        String userSetFileExtensions = contentTypeNode.get(PREF_FILE_EXTENSIONS, null);
        String[] fileExtensions = Util.parseItems(userSetFileExtensions);
        int i2 = 0;
        while (i2 < fileExtensions.length) {
            this.internalAddFileSpec(fileExtensions[i2], 10);
            ++i2;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void removeFileSpec(String fileSpec, int type) throws CoreException {
        Assert.isLegal((type == 8 || type == 4 ? 1 : 0) != 0, (String)("Unknown type: " + type));
        ContentType contentType = this;
        synchronized (contentType) {
            if (!this.internalRemoveFileSpec(fileSpec, type | 2)) {
                return;
            }
        }
        Preferences contentTypeNode = this.manager.getPreferences().node(this.id);
        Object[] userSet = this.getFileSpecs(type | 1);
        String preferenceKey = ContentType.getPreferenceKey(type);
        String newValue = Util.toListString(userSet);
        ContentType.setPreference(contentTypeNode, preferenceKey, newValue);
        try {
            contentTypeNode.flush();
        }
        catch (BackingStoreException bse) {
            String message = NLS.bind((String)ContentMessages.content_errorSavingSettings, (Object)this.id);
            Status status = new Status(4, "org.eclipse.core.contenttype", 0, message, (Throwable)bse);
            throw new CoreException((IStatus)status);
        }
        this.manager.fireContentTypeChangeEvent(this);
    }

    void setAliasTarget(ContentType newTarget) {
        this.target = newTarget;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void setDefaultCharset(String newCharset) throws CoreException {
        ContentType contentType = this;
        synchronized (contentType) {
            if (this.userCharset == null) {
                if (newCharset == null) {
                    return;
                }
            } else if (this.userCharset.equals(newCharset)) {
                return;
            }
            this.userCharset = newCharset;
        }
        Preferences contentTypeNode = this.manager.getPreferences().node(this.id);
        ContentType.setPreference(contentTypeNode, PREF_DEFAULT_CHARSET, this.userCharset);
        try {
            contentTypeNode.flush();
        }
        catch (BackingStoreException bse) {
            String message = NLS.bind((String)ContentMessages.content_errorSavingSettings, (Object)this.id);
            Status status = new Status(4, "org.eclipse.core.contenttype", 0, message, (Throwable)bse);
            throw new CoreException((IStatus)status);
        }
        this.manager.fireContentTypeChangeEvent(this);
    }

    static void setPreference(Preferences node, String key, String value) {
        if (value == null) {
            node.remove(key);
        } else {
            node.put(key, value);
        }
    }

    void setValidation(byte validation) {
        this.validation = validation;
        if (ContentTypeManager.DEBUGGING) {
            ContentMessages.message("Validating " + this + ": " + ContentType.getValidationString(validation));
        }
    }

    public String toString() {
        return this.id;
    }

    void setBaseType(ContentType baseType) {
        this.baseType = baseType;
    }

    private class InvalidDescriber
    implements IContentDescriber,
    ITextContentDescriber {
        private InvalidDescriber() {
        }

        public int describe(InputStream contents, IContentDescription description) {
            return 0;
        }

        public int describe(Reader contents, IContentDescription description) {
            return 0;
        }

        public QualifiedName[] getSupportedOptions() {
            return new QualifiedName[0];
        }
    }
}

