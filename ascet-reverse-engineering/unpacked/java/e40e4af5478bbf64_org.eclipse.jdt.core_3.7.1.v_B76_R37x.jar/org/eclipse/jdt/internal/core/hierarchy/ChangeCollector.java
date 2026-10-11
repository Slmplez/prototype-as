/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.hierarchy;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IImportContainer;
import org.eclipse.jdt.core.IImportDeclaration;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaElementDelta;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.SimpleDelta;
import org.eclipse.jdt.internal.core.hierarchy.TypeHierarchy;

public class ChangeCollector {
    HashMap changes = new HashMap();
    TypeHierarchy hierarchy;

    public ChangeCollector(TypeHierarchy hierarchy) {
        this.hierarchy = hierarchy;
    }

    private void addAffectedChildren(IJavaElementDelta delta) throws JavaModelException {
        IJavaElementDelta[] children = delta.getAffectedChildren();
        int i = 0;
        int length = children.length;
        while (i < length) {
            IJavaElementDelta child = children[i];
            IJavaElement childElement = child.getElement();
            switch (childElement.getElementType()) {
                case 12: {
                    this.addChange((IImportContainer)childElement, child);
                    break;
                }
                case 13: {
                    this.addChange((IImportDeclaration)childElement, child);
                    break;
                }
                case 7: {
                    this.addChange((IType)childElement, child);
                    break;
                }
                case 8: 
                case 9: 
                case 10: {
                    this.addChange((IMember)childElement, child);
                }
            }
            ++i;
        }
    }

    public void addChange(ICompilationUnit cu, IJavaElementDelta newDelta) throws JavaModelException {
        int newKind = newDelta.getKind();
        switch (newKind) {
            case 1: {
                ArrayList allTypes = new ArrayList();
                this.getAllTypesFromElement(cu, allTypes);
                int i = 0;
                int length = allTypes.size();
                while (i < length) {
                    IType type = (IType)allTypes.get(i);
                    this.addTypeAddition(type, (SimpleDelta)this.changes.get(type));
                    ++i;
                }
                break;
            }
            case 2: {
                ArrayList allTypes = new ArrayList();
                this.getAllTypesFromHierarchy((JavaElement)((Object)cu), allTypes);
                int i = 0;
                int length = allTypes.size();
                while (i < length) {
                    IType type = (IType)allTypes.get(i);
                    this.addTypeRemoval(type, (SimpleDelta)this.changes.get(type));
                    ++i;
                }
                break;
            }
            case 4: {
                this.addAffectedChildren(newDelta);
            }
        }
    }

    private void addChange(IImportContainer importContainer, IJavaElementDelta newDelta) throws JavaModelException {
        block14: {
            int newKind;
            block13: {
                newKind = newDelta.getKind();
                if (newKind == 4) {
                    this.addAffectedChildren(newDelta);
                    return;
                }
                SimpleDelta existingDelta = (SimpleDelta)this.changes.get(importContainer);
                if (existingDelta == null) break block13;
                switch (newKind) {
                    case 1: {
                        if (existingDelta.getKind() == 2) {
                            this.changes.remove(importContainer);
                            break;
                        }
                        break block14;
                    }
                    case 2: {
                        if (existingDelta.getKind() != 1) break block14;
                        this.changes.remove(importContainer);
                    }
                    default: {
                        break;
                    }
                    {
                    }
                }
                break block14;
            }
            SimpleDelta delta = new SimpleDelta();
            switch (newKind) {
                case 1: {
                    delta.added();
                    break;
                }
                case 2: {
                    delta.removed();
                }
            }
            this.changes.put(importContainer, delta);
        }
    }

    private void addChange(IImportDeclaration importDecl, IJavaElementDelta newDelta) {
        block13: {
            int newKind;
            block12: {
                SimpleDelta existingDelta = (SimpleDelta)this.changes.get(importDecl);
                newKind = newDelta.getKind();
                if (existingDelta == null) break block12;
                switch (newKind) {
                    case 1: {
                        if (existingDelta.getKind() == 2) {
                            this.changes.remove(importDecl);
                            break;
                        }
                        break block13;
                    }
                    case 2: {
                        if (existingDelta.getKind() != 1) break block13;
                        this.changes.remove(importDecl);
                    }
                    default: {
                        break;
                    }
                    {
                    }
                }
                break block13;
            }
            SimpleDelta delta = new SimpleDelta();
            switch (newKind) {
                case 1: {
                    delta.added();
                    break;
                }
                case 2: {
                    delta.removed();
                }
            }
            this.changes.put(importDecl, delta);
        }
    }

    private void addChange(IMember member, IJavaElementDelta newDelta) throws JavaModelException {
        int newKind = newDelta.getKind();
        switch (newKind) {
            case 1: {
                ArrayList allTypes = new ArrayList();
                this.getAllTypesFromElement(member, allTypes);
                int i = 0;
                int length = allTypes.size();
                while (i < length) {
                    IType innerType = (IType)allTypes.get(i);
                    this.addTypeAddition(innerType, (SimpleDelta)this.changes.get(innerType));
                    ++i;
                }
                break;
            }
            case 2: {
                ArrayList allTypes = new ArrayList();
                this.getAllTypesFromHierarchy((JavaElement)((Object)member), allTypes);
                int i = 0;
                int length = allTypes.size();
                while (i < length) {
                    IType type = (IType)allTypes.get(i);
                    this.addTypeRemoval(type, (SimpleDelta)this.changes.get(type));
                    ++i;
                }
                break;
            }
            case 4: {
                this.addAffectedChildren(newDelta);
            }
        }
    }

    private void addChange(IType type, IJavaElementDelta newDelta) throws JavaModelException {
        int newKind = newDelta.getKind();
        SimpleDelta existingDelta = (SimpleDelta)this.changes.get(type);
        switch (newKind) {
            case 1: {
                this.addTypeAddition(type, existingDelta);
                ArrayList allTypes = new ArrayList();
                this.getAllTypesFromElement(type, allTypes);
                int i = 0;
                int length = allTypes.size();
                while (i < length) {
                    IType innerType = (IType)allTypes.get(i);
                    this.addTypeAddition(innerType, (SimpleDelta)this.changes.get(innerType));
                    ++i;
                }
                break;
            }
            case 2: {
                this.addTypeRemoval(type, existingDelta);
                ArrayList allTypes = new ArrayList();
                this.getAllTypesFromHierarchy((JavaElement)((Object)type), allTypes);
                int i = 0;
                int length = allTypes.size();
                while (i < length) {
                    IType innerType = (IType)allTypes.get(i);
                    this.addTypeRemoval(innerType, (SimpleDelta)this.changes.get(innerType));
                    ++i;
                }
                break;
            }
            case 4: {
                this.addTypeChange(type, newDelta.getFlags(), existingDelta);
                this.addAffectedChildren(newDelta);
            }
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void addTypeAddition(IType type, SimpleDelta existingDelta) throws JavaModelException {
        if (existingDelta != null) {
            switch (existingDelta.getKind()) {
                case 2: {
                    boolean hasChange = false;
                    if (this.hasSuperTypeChange(type)) {
                        existingDelta.superTypes();
                        hasChange = true;
                    }
                    if (this.hasVisibilityChange(type)) {
                        existingDelta.modifiers();
                        return;
                    }
                    if (hasChange) return;
                    this.changes.remove(type);
                }
                default: {
                    return;
                }
            }
        } else {
            String typeName = type.getElementName();
            if (!this.hierarchy.hasSupertype(typeName) && !this.hierarchy.subtypesIncludeSupertypeOf(type)) {
                if (!this.hierarchy.missingTypes.contains(typeName)) return;
            }
            SimpleDelta delta = new SimpleDelta();
            delta.added();
            this.changes.put(type, delta);
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void addTypeChange(IType type, int newFlags, SimpleDelta existingDelta) throws JavaModelException {
        if (existingDelta != null) {
            switch (existingDelta.getKind()) {
                case 4: {
                    int existingFlags = existingDelta.getFlags();
                    boolean hasChange = false;
                    if ((existingFlags & 0x800) != 0 && this.hasSuperTypeChange(type)) {
                        existingDelta.superTypes();
                        hasChange = true;
                    }
                    if ((existingFlags & 2) != 0 && this.hasVisibilityChange(type)) {
                        existingDelta.modifiers();
                        return;
                    }
                    if (hasChange) return;
                    this.changes.remove(type);
                }
                default: {
                    return;
                }
            }
        } else {
            SimpleDelta typeDelta = null;
            if ((newFlags & 0x800) != 0 && this.hierarchy.includesTypeOrSupertype(type)) {
                typeDelta = new SimpleDelta();
                typeDelta.superTypes();
            }
            if ((newFlags & 2) != 0 && (this.hierarchy.hasSupertype(type.getElementName()) || type.equals(this.hierarchy.focusType))) {
                if (typeDelta == null) {
                    typeDelta = new SimpleDelta();
                }
                typeDelta.modifiers();
            }
            if (typeDelta == null) return;
            this.changes.put(type, typeDelta);
        }
    }

    private void addTypeRemoval(IType type, SimpleDelta existingDelta) {
        if (existingDelta != null) {
            switch (existingDelta.getKind()) {
                case 1: {
                    this.changes.remove(type);
                    break;
                }
                case 4: {
                    existingDelta.removed();
                }
            }
        } else if (this.hierarchy.contains(type)) {
            SimpleDelta typeDelta = new SimpleDelta();
            typeDelta.removed();
            this.changes.put(type, typeDelta);
        }
    }

    private void getAllTypesFromElement(IJavaElement element, ArrayList allTypes) throws JavaModelException {
        switch (element.getElementType()) {
            case 5: {
                IType[] types = ((ICompilationUnit)element).getTypes();
                int i = 0;
                int length = types.length;
                while (i < length) {
                    IType type = types[i];
                    allTypes.add(type);
                    this.getAllTypesFromElement(type, allTypes);
                    ++i;
                }
                break;
            }
            case 7: {
                IType[] types = ((IType)element).getTypes();
                int i = 0;
                int length = types.length;
                while (i < length) {
                    IType type = types[i];
                    allTypes.add(type);
                    this.getAllTypesFromElement(type, allTypes);
                    ++i;
                }
                break;
            }
            case 8: 
            case 9: 
            case 10: {
                IJavaElement[] children = ((IMember)element).getChildren();
                int i = 0;
                int length = children.length;
                while (i < length) {
                    IType type = (IType)children[i];
                    allTypes.add(type);
                    this.getAllTypesFromElement(type, allTypes);
                    ++i;
                }
                break;
            }
        }
    }

    private void getAllTypesFromHierarchy(JavaElement element, ArrayList allTypes) {
        switch (element.getElementType()) {
            case 5: {
                ArrayList types = (ArrayList)this.hierarchy.files.get(element);
                if (types == null) break;
                allTypes.addAll(types);
                break;
            }
            case 7: 
            case 8: 
            case 9: 
            case 10: {
                ArrayList types = (ArrayList)this.hierarchy.files.get(((IMember)((Object)element)).getCompilationUnit());
                if (types == null) break;
                int i = 0;
                int length = types.size();
                while (i < length) {
                    IType type = (IType)types.get(i);
                    if (element.isAncestorOf(type)) {
                        allTypes.add(type);
                    }
                    ++i;
                }
                break;
            }
        }
    }

    private boolean hasSuperTypeChange(IType type) throws JavaModelException {
        String[] newSuperInterfaces;
        IType superclass = this.hierarchy.getSuperclass(type);
        String existingSuperclassName = superclass == null ? null : superclass.getElementName();
        String newSuperclassName = type.getSuperclassName();
        if (existingSuperclassName != null && !existingSuperclassName.equals(newSuperclassName)) {
            return true;
        }
        IType[] existingSuperInterfaces = this.hierarchy.getSuperInterfaces(type);
        if (existingSuperInterfaces.length != (newSuperInterfaces = type.getSuperInterfaceNames()).length) {
            return true;
        }
        int i = 0;
        int length = newSuperInterfaces.length;
        while (i < length) {
            String superInterfaceName = newSuperInterfaces[i];
            if (!superInterfaceName.equals(newSuperInterfaces[i])) {
                return true;
            }
            ++i;
        }
        return false;
    }

    private boolean hasVisibilityChange(IType type) throws JavaModelException {
        int newFlags;
        int existingFlags = this.hierarchy.getCachedFlags(type);
        return existingFlags != (newFlags = type.getFlags());
    }

    public boolean needsRefresh() {
        return this.changes.size() != 0;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        Iterator iterator = this.changes.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry entry = iterator.next();
            buffer.append(((JavaElement)entry.getKey()).toDebugString());
            buffer.append(entry.getValue());
            if (!iterator.hasNext()) continue;
            buffer.append('\n');
        }
        return buffer.toString();
    }
}

