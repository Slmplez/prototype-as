/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.preferences.IScopeContext
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.content;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.internal.content.ContentDescription;
import org.eclipse.core.internal.content.ContentMessages;
import org.eclipse.core.internal.content.ContentType;
import org.eclipse.core.internal.content.ContentTypeManager;
import org.eclipse.core.internal.content.ContentTypeMatcher;
import org.eclipse.core.internal.content.ContentTypeVisitor;
import org.eclipse.core.internal.content.FileSpec;
import org.eclipse.core.internal.content.ILazySource;
import org.eclipse.core.internal.content.LowLevelIOException;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.content.IContentDescriber;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.IContentType;
import org.eclipse.core.runtime.content.IContentTypeManager;
import org.eclipse.core.runtime.content.ITextContentDescriber;
import org.eclipse.core.runtime.content.XMLRootElementContentDescriber;
import org.eclipse.core.runtime.content.XMLRootElementContentDescriber2;
import org.eclipse.core.runtime.preferences.IScopeContext;
import org.eclipse.osgi.util.NLS;

public final class ContentTypeCatalog {
    private static final IContentType[] NO_CONTENT_TYPES = new IContentType[0];
    private final Map allChildren = new HashMap();
    private final Map contentTypes = new HashMap();
    private final Map fileExtensions = new HashMap();
    private final Map fileNames = new HashMap();
    private int generation;
    private ContentTypeManager manager;
    private final Comparator policyConstantGeneralIsBetter = new Comparator(){

        public int compare(Object o1, Object o2) {
            ContentType type1 = (ContentType)o1;
            ContentType type2 = (ContentType)o2;
            int depthCriteria = type1.getDepth() - type2.getDepth();
            if (depthCriteria != 0) {
                return depthCriteria;
            }
            int priorityCriteria = type1.getPriority() - type2.getPriority();
            if (priorityCriteria != 0) {
                return -priorityCriteria;
            }
            return type1.getId().compareTo(type2.getId());
        }
    };
    private Comparator policyConstantSpecificIsBetter = new Comparator(){

        public int compare(Object o1, Object o2) {
            ContentType type1 = (ContentType)o1;
            ContentType type2 = (ContentType)o2;
            int depthCriteria = type1.getDepth() - type2.getDepth();
            if (depthCriteria != 0) {
                return -depthCriteria;
            }
            int priorityCriteria = type1.getPriority() - type2.getPriority();
            if (priorityCriteria != 0) {
                return -priorityCriteria;
            }
            return type1.getId().compareTo(type2.getId());
        }
    };
    private Comparator policyGeneralIsBetter = new Comparator(){

        public int compare(Object o1, Object o2) {
            ContentType type1 = (ContentType)o1;
            ContentType type2 = (ContentType)o2;
            int depthCriteria = type1.getDepth() - type2.getDepth();
            if (depthCriteria != 0) {
                return depthCriteria;
            }
            int priorityCriteria = type1.getPriority() - type2.getPriority();
            if (priorityCriteria != 0) {
                return -priorityCriteria;
            }
            return 0;
        }
    };
    private Comparator policyLexicographical = new Comparator(){

        public int compare(Object o1, Object o2) {
            ContentType type1 = (ContentType)o1;
            ContentType type2 = (ContentType)o2;
            return type1.getId().compareTo(type2.getId());
        }
    };
    private Comparator policySpecificIsBetter = new Comparator(){

        public int compare(Object o1, Object o2) {
            ContentType type1 = (ContentType)o1;
            ContentType type2 = (ContentType)o2;
            int depthCriteria = type1.getDepth() - type2.getDepth();
            if (depthCriteria != 0) {
                return -depthCriteria;
            }
            int priorityCriteria = type1.getPriority() - type2.getPriority();
            if (priorityCriteria != 0) {
                return -priorityCriteria;
            }
            return 0;
        }
    };

    private static IContentType[] concat(IContentType[][] types) {
        if (types[0].length == 0) {
            return types[1];
        }
        if (types[1].length == 0) {
            return types[0];
        }
        IContentType[] result = new IContentType[types[0].length + types[1].length];
        System.arraycopy(types[0], 0, result, 0, types[0].length);
        System.arraycopy(types[1], 0, result, types[0].length, types[1].length);
        return result;
    }

    public ContentTypeCatalog(ContentTypeManager manager, int generation) {
        this.manager = manager;
        this.generation = generation;
    }

    synchronized void addContentType(IContentType contentType) {
        this.contentTypes.put(contentType.getId(), contentType);
    }

    private IContentType[] applyPolicy(final IContentTypeManager.ISelectionPolicy policy, final IContentType[] candidates, final boolean fileName, final boolean contents) {
        final IContentType[][] result = new IContentType[][]{candidates};
        SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

            public void handleException(Throwable exception) {
            }

            public void run() throws Exception {
                result[0] = policy.select(candidates, fileName, contents);
            }
        });
        return result[0];
    }

    private void associate(ContentType contentType) {
        String[] builtInFileNames = contentType.getFileSpecs(6);
        int i = 0;
        while (i < builtInFileNames.length) {
            this.associate(contentType, builtInFileNames[i], 4);
            ++i;
        }
        String[] builtInFileExtensions = contentType.getFileSpecs(10);
        int i2 = 0;
        while (i2 < builtInFileExtensions.length) {
            this.associate(contentType, builtInFileExtensions[i2], 8);
            ++i2;
        }
    }

    synchronized void associate(ContentType contentType, String text, int type) {
        String mappingKey;
        Map fileSpecMap = (type & 4) != 0 ? this.fileNames : this.fileExtensions;
        HashSet<ContentType> existing = (HashSet<ContentType>)fileSpecMap.get(mappingKey = FileSpec.getMappingKeyFor(text));
        if (existing == null) {
            existing = new HashSet<ContentType>();
            fileSpecMap.put(mappingKey, existing);
        }
        existing.add(contentType);
    }

    private int collectMatchingByContents(int valid, IContentType[] subset, List destination, ILazySource contents, Map properties) throws IOException {
        int i = 0;
        while (i < subset.length) {
            ContentType current = (ContentType)subset[i];
            IContentDescriber describer = current.getDescriber();
            int status = 1;
            if (describer == null || (!contents.isText() || describer instanceof ITextContentDescriber) && (status = this.describe(current, contents, null, properties)) != 0) {
                if (status == 2) {
                    destination.add(valid++, current);
                } else {
                    destination.add(current);
                }
            }
            ++i;
        }
        return valid;
    }

    int describe(ContentType type, ILazySource contents, ContentDescription description, Map properties) throws IOException {
        IContentDescriber describer = type.getDescriber();
        try {
            if (contents.isText()) {
                if (describer instanceof XMLRootElementContentDescriber2) {
                    int n = ((XMLRootElementContentDescriber2)describer).describe((Reader)((Object)contents), (IContentDescription)description, properties);
                    return n;
                }
                if (describer instanceof XMLRootElementContentDescriber) {
                    int n = ((XMLRootElementContentDescriber)describer).describe((Reader)((Object)contents), (IContentDescription)description, properties);
                    return n;
                }
                int n = ((ITextContentDescriber)describer).describe((Reader)((Object)contents), (IContentDescription)description);
                return n;
            }
            if (describer instanceof XMLRootElementContentDescriber2) {
                int n = ((XMLRootElementContentDescriber2)describer).describe((InputStream)((Object)contents), (IContentDescription)description, properties);
                return n;
            }
            if (describer instanceof XMLRootElementContentDescriber) {
                int n = ((XMLRootElementContentDescriber)describer).describe((InputStream)((Object)contents), (IContentDescription)description, properties);
                return n;
            }
            int n = describer.describe((InputStream)((Object)contents), description);
            return n;
        }
        catch (RuntimeException re) {
            type.invalidateDescriber(re);
        }
        catch (Error e) {
            type.invalidateDescriber(e);
            throw e;
        }
        catch (LowLevelIOException llioe) {
            throw llioe.getActualException();
        }
        catch (IOException ioe) {
            if (ContentTypeManager.DEBUGGING) {
                String message = NLS.bind((String)ContentMessages.content_errorReadingContents, (Object)type.getId());
                ContentType.log(message, ioe);
            }
            return 1;
        }
        finally {
            contents.rewind();
        }
        return 0;
    }

    synchronized void dissociate(ContentType contentType, String text, int type) {
        String mappingKey;
        Map fileSpecMap = (type & 4) != 0 ? this.fileNames : this.fileExtensions;
        Set existing = (Set)fileSpecMap.get(mappingKey = FileSpec.getMappingKeyFor(text));
        if (existing == null) {
            return;
        }
        existing.remove(contentType);
    }

    private boolean ensureValid(ContentType type) {
        if (type.getValidation() != 0) {
            return type.isValid();
        }
        type.setValidation((byte)2);
        if (type.isAlias()) {
            return false;
        }
        ContentType baseType = null;
        if (type.getBaseTypeId() != null) {
            baseType = (ContentType)this.contentTypes.get(type.getBaseTypeId());
            if (baseType == null) {
                return false;
            }
            baseType = baseType.getAliasTarget(true);
            this.ensureValid(baseType);
            if (baseType.getValidation() != 1) {
                return false;
            }
        }
        type.setValidation((byte)1);
        type.setBaseType(baseType);
        return true;
    }

    IContentType[] findContentTypesFor(ContentTypeMatcher matcher, InputStream contents, String fileName) throws IOException {
        ILazySource buffer = ContentTypeManager.readBuffer(contents);
        IContentType[] selected = this.internalFindContentTypesFor(matcher, buffer, fileName, true);
        IContentTypeManager.ISelectionPolicy policy = matcher.getPolicy();
        if (policy != null) {
            selected = this.applyPolicy(policy, selected, fileName != null, true);
        }
        return selected;
    }

    IContentType[] findContentTypesFor(ContentTypeMatcher matcher, String fileName) {
        IContentType[] selected = ContentTypeCatalog.concat(this.internalFindContentTypesFor(matcher, fileName, this.policyConstantGeneralIsBetter));
        IContentTypeManager.ISelectionPolicy policy = matcher.getPolicy();
        if (policy != null) {
            selected = this.applyPolicy(policy, selected, true, false);
        }
        return selected;
    }

    public synchronized IContentType[] getAllContentTypes() {
        ArrayList<ContentType> result = new ArrayList<ContentType>(this.contentTypes.size());
        Iterator i = this.contentTypes.values().iterator();
        while (i.hasNext()) {
            ContentType type = (ContentType)i.next();
            if (!type.isValid() || type.isAlias()) continue;
            result.add(type);
        }
        return result.toArray(new IContentType[result.size()]);
    }

    private ContentType[] getChildren(ContentType parent) {
        ContentType[] children = (ContentType[])this.allChildren.get(parent);
        if (children != null) {
            return children;
        }
        ArrayList<ContentType> result = new ArrayList<ContentType>(5);
        Iterator i = this.contentTypes.values().iterator();
        while (i.hasNext()) {
            ContentType next = (ContentType)i.next();
            if (next.getBaseType() != parent) continue;
            result.add(next);
        }
        children = result.toArray(new ContentType[result.size()]);
        this.allChildren.put(parent, children);
        return children;
    }

    public ContentType getContentType(String contentTypeIdentifier) {
        ContentType type = this.internalGetContentType(contentTypeIdentifier);
        return type != null && type.isValid() && !type.isAlias() ? type : null;
    }

    private IContentDescription getDescriptionFor(ContentTypeMatcher matcher, ILazySource contents, String fileName, QualifiedName[] options) throws IOException {
        IContentType[] selected = this.internalFindContentTypesFor(matcher, contents, fileName, false);
        if (selected.length == 0) {
            return null;
        }
        IContentTypeManager.ISelectionPolicy policy = matcher.getPolicy();
        if (policy != null && (selected = this.applyPolicy(policy, selected, fileName != null, true)).length == 0) {
            return null;
        }
        return matcher.getSpecificDescription(((ContentType)selected[0]).internalGetDescriptionFor(contents, options));
    }

    public IContentDescription getDescriptionFor(ContentTypeMatcher matcher, InputStream contents, String fileName, QualifiedName[] options) throws IOException {
        return this.getDescriptionFor(matcher, ContentTypeManager.readBuffer(contents), fileName, options);
    }

    public IContentDescription getDescriptionFor(ContentTypeMatcher matcher, Reader contents, String fileName, QualifiedName[] options) throws IOException {
        return this.getDescriptionFor(matcher, ContentTypeManager.readBuffer(contents), fileName, options);
    }

    public int getGeneration() {
        return this.generation;
    }

    public ContentTypeManager getManager() {
        return this.manager;
    }

    private boolean internalAccept(ContentTypeVisitor visitor, ContentType root) {
        if (!root.isValid() || root.isAlias()) {
            return true;
        }
        int result = visitor.visit(root);
        switch (result) {
            case 2: {
                return false;
            }
            case 1: {
                return true;
            }
        }
        ContentType[] children = this.getChildren(root);
        if (children == null) {
            return true;
        }
        int i = 0;
        while (i < children.length) {
            if (!this.internalAccept(visitor, children[i])) {
                return false;
            }
            ++i;
        }
        return true;
    }

    private IContentType[] internalFindContentTypesFor(ILazySource buffer, IContentType[][] subset, Comparator validPolicy, Comparator indeterminatePolicy) throws IOException {
        HashMap properties = new HashMap();
        ArrayList appropriate = new ArrayList(5);
        int validFullName = this.collectMatchingByContents(0, subset[0], appropriate, buffer, properties);
        int appropriateFullName = appropriate.size();
        int validExtension = this.collectMatchingByContents(validFullName, subset[1], appropriate, buffer, properties) - validFullName;
        int appropriateExtension = appropriate.size() - appropriateFullName;
        IContentType[] result = appropriate.toArray(new IContentType[appropriate.size()]);
        if (validFullName > 1) {
            Arrays.sort(result, 0, validFullName, validPolicy);
        }
        if (validExtension > 1) {
            Arrays.sort(result, validFullName, validFullName + validExtension, validPolicy);
        }
        if (appropriateFullName - validFullName > 1) {
            Arrays.sort(result, validFullName + validExtension, appropriateFullName + validExtension, indeterminatePolicy);
        }
        if (appropriateExtension - validExtension > 1) {
            Arrays.sort(result, appropriateFullName + validExtension, appropriate.size(), indeterminatePolicy);
        }
        return result;
    }

    private IContentType[] internalFindContentTypesFor(ContentTypeMatcher matcher, ILazySource buffer, String fileName, boolean forceValidation) throws IOException {
        Comparator validPolicy;
        Comparator indeterminatePolicy;
        IContentType[][] subset;
        if (fileName == null) {
            subset = new IContentType[][]{this.getAllContentTypes(), NO_CONTENT_TYPES};
            indeterminatePolicy = this.policyConstantGeneralIsBetter;
            validPolicy = this.policyConstantSpecificIsBetter;
        } else {
            subset = this.internalFindContentTypesFor(matcher, fileName, this.policyLexicographical);
            indeterminatePolicy = this.policyGeneralIsBetter;
            validPolicy = this.policySpecificIsBetter;
        }
        int total = subset[0].length + subset[1].length;
        if (total == 0) {
            return NO_CONTENT_TYPES;
        }
        if (!forceValidation && total == 1) {
            IContentType[] found;
            IContentType[] iContentTypeArray = found = subset[0].length == 1 ? subset[0] : subset[1];
            if (!buffer.isText()) {
                return found;
            }
            IContentDescriber describer = ((ContentType)found[0]).getDescriber();
            if (describer == null || describer instanceof ITextContentDescriber) {
                return found;
            }
            return NO_CONTENT_TYPES;
        }
        return this.internalFindContentTypesFor(buffer, subset, validPolicy, indeterminatePolicy);
    }

    private synchronized IContentType[][] internalFindContentTypesFor(ContentTypeMatcher matcher, String fileName, Comparator sortingPolicy) {
        HashSet allByFileName;
        IScopeContext context = matcher.getContext();
        IContentType[][] result = new IContentType[][]{NO_CONTENT_TYPES, NO_CONTENT_TYPES};
        if (context.equals(this.manager.getContext())) {
            allByFileName = this.getDirectlyAssociated(fileName, 4);
        } else {
            allByFileName = new HashSet(this.getDirectlyAssociated(fileName, 6));
            allByFileName.addAll(matcher.getDirectlyAssociated(this, fileName, 4));
        }
        Set selectedByName = this.selectMatchingByName(context, allByFileName, Collections.EMPTY_SET, fileName, 4);
        result[0] = selectedByName.toArray(new IContentType[selectedByName.size()]);
        String fileExtension = ContentTypeManager.getFileExtension(fileName);
        if (fileExtension != null) {
            HashSet allByFileExtension;
            if (context.equals(this.manager.getContext())) {
                allByFileExtension = this.getDirectlyAssociated(fileExtension, 8);
            } else {
                allByFileExtension = new HashSet(this.getDirectlyAssociated(fileExtension, 10));
                allByFileExtension.addAll(matcher.getDirectlyAssociated(this, fileExtension, 8));
            }
            Set selectedByExtension = this.selectMatchingByName(context, allByFileExtension, selectedByName, fileExtension, 8);
            if (!selectedByExtension.isEmpty()) {
                result[1] = selectedByExtension.toArray(new IContentType[selectedByExtension.size()]);
            }
        }
        if (result[0].length > 1) {
            Arrays.sort(result[0], sortingPolicy);
        }
        if (result[1].length > 1) {
            Arrays.sort(result[1], sortingPolicy);
        }
        return result;
    }

    private Set getDirectlyAssociated(String text, int typeMask) {
        Map associations = (typeMask & 4) != 0 ? this.fileNames : this.fileExtensions;
        HashSet result = null;
        if ((typeMask & 3) == 0) {
            result = (HashSet)associations.get(FileSpec.getMappingKeyFor(text));
        } else {
            Set initialSet = (Set)associations.get(FileSpec.getMappingKeyFor(text));
            if (initialSet != null && !initialSet.isEmpty()) {
                result = new HashSet(initialSet);
                typeMask ^= 3;
                Iterator i = result.iterator();
                while (i.hasNext()) {
                    ContentType contentType = (ContentType)i.next();
                    if (contentType.hasFileSpec(text, typeMask, true)) continue;
                    i.remove();
                }
            }
        }
        return result == null ? Collections.EMPTY_SET : result;
    }

    synchronized ContentType internalGetContentType(String contentTypeIdentifier) {
        return (ContentType)this.contentTypes.get(contentTypeIdentifier);
    }

    private void makeAliases() {
        Iterator i = this.contentTypes.values().iterator();
        while (i.hasNext()) {
            ContentType target;
            ContentType type = (ContentType)i.next();
            String targetId = type.getAliasTargetId();
            if (targetId == null || (target = this.internalGetContentType(targetId)) == null) continue;
            type.setAliasTarget(target);
        }
    }

    protected synchronized void organize() {
        ContentType type;
        this.makeAliases();
        Iterator i = this.contentTypes.values().iterator();
        while (i.hasNext()) {
            type = (ContentType)i.next();
            if (!this.ensureValid(type)) continue;
            this.associate(type);
        }
        if (ContentTypeManager.DEBUGGING) {
            i = this.contentTypes.values().iterator();
            while (i.hasNext()) {
                type = (ContentType)i.next();
                if (type.isValid()) continue;
                ContentMessages.message("Invalid: " + type);
            }
        }
    }

    private Set selectMatchingByName(final IScopeContext context, Collection source, final Collection existing, final String fileSpecText, final int fileSpecType) {
        if (source == null || source.isEmpty()) {
            return Collections.EMPTY_SET;
        }
        final HashSet destination = new HashSet(5);
        Iterator i = source.iterator();
        while (i.hasNext()) {
            final ContentType root = (ContentType)i.next();
            this.internalAccept(new ContentTypeVisitor(){

                public int visit(ContentType type) {
                    if (type != root && type.hasBuiltInAssociations()) {
                        return 1;
                    }
                    if (type == root && !type.hasFileSpec(context, fileSpecText, fileSpecType)) {
                        return 1;
                    }
                    if (!existing.contains(type)) {
                        destination.add(type);
                    }
                    return 0;
                }
            }, root);
        }
        return destination;
    }
}

