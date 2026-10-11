/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.jdt.core.dom.Message
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.dom.Message;
import org.eclipse.jdt.debug.eval.ICompiledExpression;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.Instruction;

public class InstructionSequence
implements ICompiledExpression {
    private List fInstructions = new ArrayList(10);
    private List fErrors = new ArrayList();
    private String fSnippet;
    private CoreException fException;

    public InstructionSequence(String snippet) {
        this.fSnippet = snippet;
    }

    public CoreException getException() {
        return this.fException;
    }

    public String getSnippet() {
        return this.fSnippet;
    }

    public void addError(String error) {
        this.fErrors.add(error);
    }

    public boolean hasErrors() {
        return !this.fErrors.isEmpty();
    }

    public Message[] getErrors() {
        Message[] messages = new Message[this.fErrors.size()];
        int i = 0;
        Iterator iter = this.fErrors.iterator();
        while (iter.hasNext()) {
            messages[i++] = new Message((String)iter.next(), -1);
        }
        return messages;
    }

    public String[] getErrorMessages() {
        return this.fErrors.toArray(new String[this.fErrors.size()]);
    }

    public Instruction[] getInstructions() {
        int size = this.fInstructions.size();
        Instruction[] instructions = new Instruction[size];
        if (size > 0) {
            this.fInstructions.toArray(instructions);
        }
        return instructions;
    }

    public Instruction getInstruction(int address) {
        return (Instruction)this.fInstructions.get(address);
    }

    public void add(Instruction instruction) {
        this.fInstructions.add(instruction);
    }

    public int indexOf(Instruction instruction) {
        return this.fInstructions.indexOf(instruction);
    }

    public boolean isEmpty() {
        return this.fInstructions.isEmpty();
    }

    public void insert(Instruction instruction, int index) {
        this.fInstructions.add(index, instruction);
    }

    public Instruction get(int address) {
        return (Instruction)this.fInstructions.get(address);
    }

    public int getEnd() {
        return this.fInstructions.size() - 1;
    }
}

