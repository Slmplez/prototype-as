/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.core.dom.BindingResolver;
import org.eclipse.jdt.core.dom.IMethodBinding;
import org.eclipse.jdt.core.dom.MemberValuePairBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;

class DefaultValuePairBinding
extends MemberValuePairBinding {
    private MethodBinding method;

    DefaultValuePairBinding(MethodBinding binding, BindingResolver resolver) {
        super(null, resolver);
        this.method = binding;
        this.value = MemberValuePairBinding.buildDOMValue(binding.getDefaultValue(), resolver);
        if (binding.returnType != null && binding.returnType.isArrayType() && !this.value.getClass().isArray()) {
            this.value = new Object[]{this.value};
        }
    }

    public IMethodBinding getMethodBinding() {
        return this.bindingResolver.getMethodBinding(this.method);
    }

    public String getName() {
        return new String(this.method.selector);
    }

    public Object getValue() {
        return this.value;
    }

    public boolean isDefault() {
        return true;
    }

    public boolean isDeprecated() {
        return this.method.isDeprecated();
    }
}

