/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.core.compiler.CharOperation
 *  org.eclipse.jdt.internal.compiler.impl.Constant
 *  org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding
 *  org.eclipse.jdt.internal.compiler.lookup.Binding
 *  org.eclipse.jdt.internal.compiler.lookup.FieldBinding
 *  org.eclipse.jdt.internal.compiler.lookup.PackageBinding
 *  org.eclipse.jdt.internal.compiler.lookup.TypeBinding
 *  org.eclipse.jdt.internal.compiler.lookup.VariableBinding
 */
package org.eclipse.jdt.internal.compiler.apt.model;

import java.util.Collections;
import java.util.List;
import java.util.Set;
import javax.lang.model.element.Element;
import javax.lang.model.element.ElementKind;
import javax.lang.model.element.ElementVisitor;
import javax.lang.model.element.Modifier;
import javax.lang.model.element.Name;
import javax.lang.model.element.PackageElement;
import javax.lang.model.element.VariableElement;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.apt.dispatch.BaseProcessingEnvImpl;
import org.eclipse.jdt.internal.compiler.apt.model.ElementImpl;
import org.eclipse.jdt.internal.compiler.apt.model.Factory;
import org.eclipse.jdt.internal.compiler.apt.model.NameImpl;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.AptBinaryLocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.AptSourceLocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;

public class VariableElementImpl
extends ElementImpl
implements VariableElement {
    VariableElementImpl(BaseProcessingEnvImpl env, VariableBinding binding) {
        super(env, (Binding)binding);
    }

    @Override
    public <R, P> R accept(ElementVisitor<R, P> v, P p) {
        return v.visitVariable(this, p);
    }

    @Override
    protected AnnotationBinding[] getAnnotationBindings() {
        return ((VariableBinding)this._binding).getAnnotations();
    }

    @Override
    public Object getConstantValue() {
        VariableBinding variableBinding = (VariableBinding)this._binding;
        Constant constant = variableBinding.constant();
        if (constant == null || constant == Constant.NotAConstant) {
            return null;
        }
        TypeBinding type = variableBinding.type;
        switch (type.id) {
            case 5: {
                return constant.booleanValue();
            }
            case 3: {
                return constant.byteValue();
            }
            case 2: {
                return Character.valueOf(constant.charValue());
            }
            case 8: {
                return constant.doubleValue();
            }
            case 9: {
                return Float.valueOf(constant.floatValue());
            }
            case 10: {
                return constant.intValue();
            }
            case 11: {
                return constant.stringValue();
            }
            case 7: {
                return constant.longValue();
            }
            case 4: {
                return constant.shortValue();
            }
        }
        return null;
    }

    @Override
    public List<? extends Element> getEnclosedElements() {
        return Collections.emptyList();
    }

    @Override
    public Element getEnclosingElement() {
        if (this._binding instanceof FieldBinding) {
            return this._env.getFactory().newElement((Binding)((FieldBinding)this._binding).declaringClass);
        }
        if (this._binding instanceof AptSourceLocalVariableBinding) {
            return this._env.getFactory().newElement((Binding)((AptSourceLocalVariableBinding)this._binding).methodBinding);
        }
        if (this._binding instanceof AptBinaryLocalVariableBinding) {
            return this._env.getFactory().newElement((Binding)((AptBinaryLocalVariableBinding)this._binding).methodBinding);
        }
        return null;
    }

    @Override
    public ElementKind getKind() {
        if (this._binding instanceof FieldBinding) {
            if (((FieldBinding)this._binding).declaringClass.isEnum()) {
                return ElementKind.ENUM_CONSTANT;
            }
            return ElementKind.FIELD;
        }
        return ElementKind.PARAMETER;
    }

    @Override
    public Set<Modifier> getModifiers() {
        if (this._binding instanceof VariableBinding) {
            return Factory.getModifiers(((VariableBinding)this._binding).modifiers, this.getKind());
        }
        return Collections.emptySet();
    }

    @Override
    PackageElement getPackage() {
        if (this._binding instanceof FieldBinding) {
            PackageBinding pkgBinding = ((FieldBinding)this._binding).declaringClass.fPackage;
            return this._env.getFactory().newPackageElement(pkgBinding);
        }
        throw new UnsupportedOperationException("NYI: VariableElmentImpl.getPackage() for method parameter");
    }

    @Override
    public Name getSimpleName() {
        return new NameImpl(((VariableBinding)this._binding).name);
    }

    @Override
    public boolean hides(Element hiddenElement) {
        if (this._binding instanceof FieldBinding) {
            if (!(((ElementImpl)hiddenElement)._binding instanceof FieldBinding)) {
                return false;
            }
            FieldBinding hidden = (FieldBinding)((ElementImpl)hiddenElement)._binding;
            if (hidden.isPrivate()) {
                return false;
            }
            FieldBinding hider = (FieldBinding)this._binding;
            if (hidden == hider) {
                return false;
            }
            if (!CharOperation.equals((char[])hider.name, (char[])hidden.name)) {
                return false;
            }
            return hider.declaringClass.findSuperTypeOriginatingFrom((TypeBinding)hidden.declaringClass) != null;
        }
        return false;
    }

    @Override
    public String toString() {
        return new String(((VariableBinding)this._binding).name);
    }
}

