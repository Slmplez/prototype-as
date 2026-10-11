/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.formatter;

import java.util.ArrayList;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;

class CascadingMethodInvocationFragmentBuilder
extends ASTVisitor {
    ArrayList fragmentsList = new ArrayList();

    CascadingMethodInvocationFragmentBuilder() {
    }

    public MessageSend[] fragments() {
        MessageSend[] fragments = new MessageSend[this.fragmentsList.size()];
        this.fragmentsList.toArray(fragments);
        return fragments;
    }

    public int size() {
        return this.fragmentsList.size();
    }

    public boolean visit(MessageSend messageSend, BlockScope scope) {
        if ((messageSend.receiver.bits & 0x1FE00000) >> 21 == 0) {
            if (messageSend.receiver instanceof MessageSend) {
                this.fragmentsList.add(0, messageSend);
                messageSend.receiver.traverse((ASTVisitor)this, scope);
                return false;
            }
            this.fragmentsList.add(0, messageSend);
            this.fragmentsList.add(1, messageSend);
        } else {
            this.fragmentsList.add(0, messageSend);
            this.fragmentsList.add(1, messageSend);
        }
        return false;
    }
}

