/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.jdt.core.IAnnotation;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.IParent;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.core.AnnotatableInfo;
import org.eclipse.jdt.internal.core.AnnotationInfo;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.JavaElementDelta;
import org.eclipse.jdt.internal.core.JavaElementInfo;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.MemberElementInfo;
import org.eclipse.jdt.internal.core.SourceFieldElementInfo;
import org.eclipse.jdt.internal.core.SourceMethodElementInfo;
import org.eclipse.jdt.internal.core.SourceTypeElementInfo;
import org.eclipse.jdt.internal.core.util.Util;

public class JavaElementDeltaBuilder {
    IJavaElement javaElement;
    int maxDepth = Integer.MAX_VALUE;
    Map infos;
    Map annotationInfos;
    Map oldPositions;
    Map newPositions;
    public JavaElementDelta delta = null;
    HashSet added;
    HashSet removed;

    public JavaElementDeltaBuilder(IJavaElement javaElement) {
        this.javaElement = javaElement;
        this.initialize();
        this.recordElementInfo(javaElement, (JavaModel)this.javaElement.getJavaModel(), 0);
    }

    public JavaElementDeltaBuilder(IJavaElement javaElement, int maxDepth) {
        this.javaElement = javaElement;
        this.maxDepth = maxDepth;
        this.initialize();
        this.recordElementInfo(javaElement, (JavaModel)this.javaElement.getJavaModel(), 0);
    }

    private void added(IJavaElement element) {
        this.added.add(element);
        ListItem current = this.getNewPosition(element);
        ListItem previous = null;
        ListItem next = null;
        if (current.previous != null) {
            previous = this.getNewPosition(current.previous);
        }
        if (current.next != null) {
            next = this.getNewPosition(current.next);
        }
        if (previous != null) {
            previous.next = current.next;
        }
        if (next != null) {
            next.previous = current.previous;
        }
    }

    public void buildDeltas() {
        this.delta = new JavaElementDelta(this.javaElement);
        if (this.javaElement.getElementType() >= 5) {
            this.delta.fineGrained();
        }
        this.recordNewPositions(this.javaElement, 0);
        this.findAdditions(this.javaElement, 0);
        this.findDeletions();
        this.findChangesInPositioning(this.javaElement, 0);
        this.trimDelta(this.delta);
        if (this.delta.getAffectedChildren().length == 0) {
            this.delta.contentChanged();
        }
    }

    private boolean equals(char[][][] first, char[][][] second) {
        if (first == second) {
            return true;
        }
        if (first == null || second == null) {
            return false;
        }
        if (first.length != second.length) {
            return false;
        }
        int i = first.length;
        while (--i >= 0) {
            if (CharOperation.equals(first[i], second[i])) continue;
            return false;
        }
        return true;
    }

    private void findAdditions(IJavaElement newElement, int depth) {
        IJavaElement[] children;
        JavaElementInfo oldInfo = this.getElementInfo(newElement);
        if (oldInfo == null && depth < this.maxDepth) {
            this.delta.added(newElement);
            this.added(newElement);
        } else {
            this.removeElementInfo(newElement);
        }
        if (depth >= this.maxDepth) {
            this.delta.changed(newElement, 1);
            return;
        }
        JavaElementInfo newInfo = null;
        try {
            newInfo = (JavaElementInfo)((JavaElement)newElement).getElementInfo();
        }
        catch (JavaModelException javaModelException) {
            return;
        }
        this.findContentChange(oldInfo, newInfo, newElement);
        if (oldInfo != null && newElement instanceof IParent && (children = newInfo.getChildren()) != null) {
            int length = children.length;
            int i = 0;
            while (i < length) {
                this.findAdditions(children[i], depth + 1);
                ++i;
            }
        }
    }

    private void findChangesInPositioning(IJavaElement element, int depth) {
        if (depth >= this.maxDepth || this.added.contains(element) || this.removed.contains(element)) {
            return;
        }
        if (!this.isPositionedCorrectly(element)) {
            this.delta.changed(element, 256);
        }
        if (element instanceof IParent) {
            JavaElementInfo info = null;
            try {
                info = (JavaElementInfo)((JavaElement)element).getElementInfo();
            }
            catch (JavaModelException javaModelException) {
                return;
            }
            IJavaElement[] children = info.getChildren();
            if (children != null) {
                int length = children.length;
                int i = 0;
                while (i < length) {
                    this.findChangesInPositioning(children[i], depth + 1);
                    ++i;
                }
            }
        }
    }

    private void findAnnotationChanges(IAnnotation[] oldAnnotations, IAnnotation[] newAnnotations, IJavaElement parent) {
        ArrayList<JavaElementDelta> annotationDeltas = null;
        int i = 0;
        int length = newAnnotations.length;
        while (i < length) {
            IAnnotation newAnnotation = newAnnotations[i];
            Object oldInfo = this.annotationInfos.remove(newAnnotation);
            if (oldInfo == null) {
                JavaElementDelta annotationDelta = new JavaElementDelta(newAnnotation);
                annotationDelta.added();
                if (annotationDeltas == null) {
                    annotationDeltas = new ArrayList<JavaElementDelta>();
                }
                annotationDeltas.add(annotationDelta);
            } else {
                AnnotationInfo newInfo = null;
                try {
                    newInfo = (AnnotationInfo)((JavaElement)((Object)newAnnotation)).getElementInfo();
                }
                catch (JavaModelException javaModelException) {
                    return;
                }
                if (!Util.equalArraysOrNull(((AnnotationInfo)oldInfo).members, newInfo.members)) {
                    JavaElementDelta annotationDelta = new JavaElementDelta(newAnnotation);
                    annotationDelta.changed(1);
                    if (annotationDeltas == null) {
                        annotationDeltas = new ArrayList();
                    }
                    annotationDeltas.add(annotationDelta);
                }
            }
            ++i;
        }
        i = 0;
        length = oldAnnotations.length;
        while (i < length) {
            IAnnotation oldAnnotation = oldAnnotations[i];
            if (this.annotationInfos.remove(oldAnnotation) != null) {
                JavaElementDelta annotationDelta = new JavaElementDelta(oldAnnotation);
                annotationDelta.removed();
                if (annotationDeltas == null) {
                    annotationDeltas = new ArrayList();
                }
                annotationDeltas.add(annotationDelta);
            }
            ++i;
        }
        if (annotationDeltas == null) {
            return;
        }
        int size = annotationDeltas.size();
        if (size > 0) {
            JavaElementDelta parentDelta = this.delta.changed(parent, 0x400000);
            parentDelta.annotationDeltas = annotationDeltas.toArray(new IJavaElementDelta[size]);
        }
    }

    private void findContentChange(JavaElementInfo oldInfo, JavaElementInfo newInfo, IJavaElement newElement) {
        block12: {
            block14: {
                block13: {
                    if (!(oldInfo instanceof MemberElementInfo) || !(newInfo instanceof MemberElementInfo)) break block12;
                    if (((MemberElementInfo)oldInfo).getModifiers() != ((MemberElementInfo)newInfo).getModifiers()) {
                        this.delta.changed(newElement, 2);
                    }
                    if (oldInfo instanceof AnnotatableInfo && newInfo instanceof AnnotatableInfo) {
                        this.findAnnotationChanges(((AnnotatableInfo)oldInfo).annotations, ((AnnotatableInfo)newInfo).annotations, newElement);
                    }
                    if (!(oldInfo instanceof SourceMethodElementInfo) || !(newInfo instanceof SourceMethodElementInfo)) break block13;
                    SourceMethodElementInfo oldSourceMethodInfo = (SourceMethodElementInfo)oldInfo;
                    SourceMethodElementInfo newSourceMethodInfo = (SourceMethodElementInfo)newInfo;
                    if (CharOperation.equals(oldSourceMethodInfo.getReturnTypeName(), newSourceMethodInfo.getReturnTypeName()) && CharOperation.equals(oldSourceMethodInfo.getTypeParameterNames(), newSourceMethodInfo.getTypeParameterNames()) && this.equals(oldSourceMethodInfo.getTypeParameterBounds(), newSourceMethodInfo.getTypeParameterBounds())) break block12;
                    this.delta.changed(newElement, 1);
                    break block12;
                }
                if (!(oldInfo instanceof SourceFieldElementInfo) || !(newInfo instanceof SourceFieldElementInfo)) break block14;
                if (CharOperation.equals(((SourceFieldElementInfo)oldInfo).getTypeName(), ((SourceFieldElementInfo)newInfo).getTypeName())) break block12;
                this.delta.changed(newElement, 1);
                break block12;
            }
            if (oldInfo instanceof SourceTypeElementInfo && newInfo instanceof SourceTypeElementInfo) {
                SourceTypeElementInfo oldSourceTypeInfo = (SourceTypeElementInfo)oldInfo;
                SourceTypeElementInfo newSourceTypeInfo = (SourceTypeElementInfo)newInfo;
                if (!CharOperation.equals(oldSourceTypeInfo.getSuperclassName(), newSourceTypeInfo.getSuperclassName()) || !CharOperation.equals(oldSourceTypeInfo.getInterfaceNames(), newSourceTypeInfo.getInterfaceNames())) {
                    this.delta.changed(newElement, 2048);
                }
                if (!CharOperation.equals(oldSourceTypeInfo.getTypeParameterNames(), newSourceTypeInfo.getTypeParameterNames()) || !this.equals(oldSourceTypeInfo.getTypeParameterBounds(), newSourceTypeInfo.getTypeParameterBounds())) {
                    this.delta.changed(newElement, 1);
                }
                HashMap oldTypeCategories = oldSourceTypeInfo.categories;
                HashMap newTypeCategories = newSourceTypeInfo.categories;
                if (oldTypeCategories != null) {
                    Set elements;
                    if (newTypeCategories != null) {
                        elements = new HashSet(oldTypeCategories.keySet());
                        elements.addAll(newTypeCategories.keySet());
                    } else {
                        elements = oldTypeCategories.keySet();
                    }
                    Iterator iterator = elements.iterator();
                    while (iterator.hasNext()) {
                        Object[] newCategories;
                        IJavaElement element = (IJavaElement)iterator.next();
                        Object[] oldCategories = (String[])oldTypeCategories.get(element);
                        Object[] objectArray = newCategories = newTypeCategories == null ? null : (String[])newTypeCategories.get(element);
                        if (Util.equalArraysOrNull(oldCategories, newCategories)) continue;
                        this.delta.changed(element, 0x100000);
                    }
                } else if (newTypeCategories != null) {
                    Iterator elements = newTypeCategories.keySet().iterator();
                    while (elements.hasNext()) {
                        IJavaElement element = (IJavaElement)elements.next();
                        this.delta.changed(element, 0x100000);
                    }
                }
            }
        }
    }

    private void findDeletions() {
        Iterator iter = this.infos.keySet().iterator();
        while (iter.hasNext()) {
            IJavaElement element = (IJavaElement)iter.next();
            this.delta.removed(element);
            this.removed(element);
        }
    }

    private JavaElementInfo getElementInfo(IJavaElement element) {
        return (JavaElementInfo)this.infos.get(element);
    }

    private ListItem getNewPosition(IJavaElement element) {
        return (ListItem)this.newPositions.get(element);
    }

    private ListItem getOldPosition(IJavaElement element) {
        return (ListItem)this.oldPositions.get(element);
    }

    private void initialize() {
        this.infos = new HashMap(20);
        this.oldPositions = new HashMap(20);
        this.newPositions = new HashMap(20);
        this.oldPositions.put(this.javaElement, new ListItem(null, null));
        this.newPositions.put(this.javaElement, new ListItem(null, null));
        this.added = new HashSet(5);
        this.removed = new HashSet(5);
    }

    private void insertPositions(IJavaElement[] elements, boolean isNew) {
        int length = elements.length;
        IJavaElement previous = null;
        IJavaElement current = null;
        IJavaElement next = length > 0 ? elements[0] : null;
        int i = 0;
        while (i < length) {
            previous = current;
            current = next;
            IJavaElement iJavaElement = next = i + 1 < length ? elements[i + 1] : null;
            if (isNew) {
                this.newPositions.put(current, new ListItem(previous, next));
            } else {
                this.oldPositions.put(current, new ListItem(previous, next));
            }
            ++i;
        }
    }

    private boolean isPositionedCorrectly(IJavaElement element) {
        ListItem oldListItem = this.getOldPosition(element);
        if (oldListItem == null) {
            return false;
        }
        ListItem newListItem = this.getNewPosition(element);
        if (newListItem == null) {
            return false;
        }
        IJavaElement oldPrevious = oldListItem.previous;
        IJavaElement newPrevious = newListItem.previous;
        if (oldPrevious == null) {
            return newPrevious == null;
        }
        return oldPrevious.equals(newPrevious);
    }

    private void recordElementInfo(IJavaElement element, JavaModel model, int depth) {
        IJavaElement[] children;
        if (depth >= this.maxDepth) {
            return;
        }
        JavaElementInfo info = (JavaElementInfo)JavaModelManager.getJavaModelManager().getInfo(element);
        if (info == null) {
            return;
        }
        this.infos.put(element, info);
        if (element instanceof IParent && (children = info.getChildren()) != null) {
            this.insertPositions(children, false);
            int i = 0;
            int length = children.length;
            while (i < length) {
                this.recordElementInfo(children[i], model, depth + 1);
                ++i;
            }
        }
        IAnnotation[] annotations = null;
        if (info instanceof AnnotatableInfo) {
            annotations = ((AnnotatableInfo)info).annotations;
        }
        if (annotations != null) {
            if (this.annotationInfos == null) {
                this.annotationInfos = new HashMap();
            }
            JavaModelManager manager = JavaModelManager.getJavaModelManager();
            int i = 0;
            int length = annotations.length;
            while (i < length) {
                this.annotationInfos.put(annotations[i], manager.getInfo(annotations[i]));
                ++i;
            }
        }
    }

    private void recordNewPositions(IJavaElement newElement, int depth) {
        if (depth < this.maxDepth && newElement instanceof IParent) {
            JavaElementInfo info = null;
            try {
                info = (JavaElementInfo)((JavaElement)newElement).getElementInfo();
            }
            catch (JavaModelException javaModelException) {
                return;
            }
            IJavaElement[] children = info.getChildren();
            if (children != null) {
                this.insertPositions(children, true);
                int i = 0;
                int length = children.length;
                while (i < length) {
                    this.recordNewPositions(children[i], depth + 1);
                    ++i;
                }
            }
        }
    }

    private void removed(IJavaElement element) {
        this.removed.add(element);
        ListItem current = this.getOldPosition(element);
        ListItem previous = null;
        ListItem next = null;
        if (current.previous != null) {
            previous = this.getOldPosition(current.previous);
        }
        if (current.next != null) {
            next = this.getOldPosition(current.next);
        }
        if (previous != null) {
            previous.next = current.next;
        }
        if (next != null) {
            next.previous = current.previous;
        }
    }

    private void removeElementInfo(IJavaElement element) {
        this.infos.remove(element);
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("Built delta:\n");
        buffer.append(this.delta == null ? "<null>" : this.delta.toString());
        return buffer.toString();
    }

    private void trimDelta(JavaElementDelta elementDelta) {
        if (elementDelta.getKind() == 2) {
            IJavaElementDelta[] children = elementDelta.getAffectedChildren();
            int i = 0;
            int length = children.length;
            while (i < length) {
                elementDelta.removeAffectedChild((JavaElementDelta)children[i]);
                ++i;
            }
        } else {
            IJavaElementDelta[] children = elementDelta.getAffectedChildren();
            int i = 0;
            int length = children.length;
            while (i < length) {
                this.trimDelta((JavaElementDelta)children[i]);
                ++i;
            }
        }
    }

    static class ListItem {
        public IJavaElement previous;
        public IJavaElement next;

        public ListItem(IJavaElement previous, IJavaElement next) {
            this.previous = previous;
            this.next = next;
        }
    }
}

