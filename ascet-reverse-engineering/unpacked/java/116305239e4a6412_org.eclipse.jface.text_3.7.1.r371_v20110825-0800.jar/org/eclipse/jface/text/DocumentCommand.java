/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.BadPositionCategoryException
 *  org.eclipse.jface.text.DefaultPositionUpdater
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentListener
 *  org.eclipse.jface.text.IPositionUpdater
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Position
 *  org.eclipse.swt.events.VerifyEvent
 */
package org.eclipse.jface.text;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.DefaultPositionUpdater;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.jface.text.IPositionUpdater;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Position;
import org.eclipse.swt.events.VerifyEvent;

public class DocumentCommand {
    public boolean doit = false;
    public int offset;
    public int length;
    public String text;
    public IDocumentListener owner;
    public int caretOffset;
    private final List fCommands = new ArrayList();
    public boolean shiftsCaret;

    protected DocumentCommand() {
    }

    void setEvent(VerifyEvent event, IRegion modelRange) {
        this.doit = true;
        this.text = event.text;
        this.offset = modelRange.getOffset();
        this.length = modelRange.getLength();
        this.owner = null;
        this.caretOffset = -1;
        this.shiftsCaret = true;
        this.fCommands.clear();
    }

    boolean fillEvent(VerifyEvent event, IRegion modelRange) {
        event.text = this.text;
        event.doit = this.offset == modelRange.getOffset() && this.length == modelRange.getLength() && this.doit && this.caretOffset == -1;
        return event.doit;
    }

    public void addCommand(int commandOffset, int commandLength, String commandText, IDocumentListener commandOwner) throws BadLocationException {
        Command command = new Command(commandOffset, commandLength, commandText, commandOwner);
        if (this.intersects(command)) {
            throw new BadLocationException();
        }
        int index = Collections.binarySearch(this.fCommands, command);
        if (index >= 0) {
            throw new BadLocationException();
        }
        int insertionIndex = -(index + 1);
        if (insertionIndex != this.fCommands.size() && this.intersects((Command)this.fCommands.get(insertionIndex), command)) {
            throw new BadLocationException();
        }
        if (insertionIndex != 0 && this.intersects((Command)this.fCommands.get(insertionIndex - 1), command)) {
            throw new BadLocationException();
        }
        this.fCommands.add(insertionIndex, command);
    }

    public Iterator getCommandIterator() {
        Command command = new Command(this.offset, this.length, this.text, this.owner);
        return new CommandIterator(this.fCommands, command, true);
    }

    public int getCommandCount() {
        return 1 + this.fCommands.size();
    }

    private boolean intersects(Command command0, Command command1) {
        if (command0.fOffset + command0.fLength <= command1.fOffset || command1.fOffset + command1.fLength <= command0.fOffset) {
            return 2 * command0.fOffset + command0.fLength - (2 * command1.fOffset + command1.fLength) == 0;
        }
        return true;
    }

    private boolean intersects(Command command) {
        if (this.offset + this.length <= command.fOffset || command.fOffset + command.fLength <= this.offset) {
            return 2 * this.offset + this.length - (2 * command.fOffset + command.fLength) == 0;
        }
        return true;
    }

    void execute(IDocument document) throws BadLocationException {
        block18: {
            if (this.length == 0 && this.text == null && this.fCommands.size() == 0) {
                return;
            }
            DefaultPositionUpdater updater = new DefaultPositionUpdater(this.getCategory());
            Position caretPosition = null;
            try {
                if (this.updateCaret()) {
                    document.addPositionCategory(this.getCategory());
                    document.addPositionUpdater((IPositionUpdater)updater);
                    caretPosition = new Position(this.caretOffset);
                    document.addPosition(this.getCategory(), caretPosition);
                }
                Command originalCommand = new Command(this.offset, this.length, this.text, this.owner);
                CommandIterator iterator = new CommandIterator(this.fCommands, originalCommand, false);
                while (iterator.hasNext()) {
                    ((Command)iterator.next()).execute(document);
                }
            }
            catch (BadLocationException badLocationException) {
                if (!this.updateCaret()) break block18;
                document.removePositionUpdater((IPositionUpdater)updater);
                try {
                    document.removePositionCategory(this.getCategory());
                }
                catch (BadPositionCategoryException badPositionCategoryException) {
                    Assert.isTrue((boolean)false);
                }
                this.caretOffset = caretPosition.getOffset();
                break block18;
            }
            catch (BadPositionCategoryException badPositionCategoryException) {
                try {
                    if (!this.updateCaret()) break block18;
                }
                catch (Throwable throwable) {
                    if (this.updateCaret()) {
                        document.removePositionUpdater((IPositionUpdater)updater);
                        try {
                            document.removePositionCategory(this.getCategory());
                        }
                        catch (BadPositionCategoryException badPositionCategoryException2) {
                            Assert.isTrue((boolean)false);
                        }
                        this.caretOffset = caretPosition.getOffset();
                    }
                    throw throwable;
                }
                document.removePositionUpdater((IPositionUpdater)updater);
                try {
                    document.removePositionCategory(this.getCategory());
                }
                catch (BadPositionCategoryException badPositionCategoryException3) {
                    Assert.isTrue((boolean)false);
                }
                this.caretOffset = caretPosition.getOffset();
                break block18;
            }
            if (!this.updateCaret()) break block18;
            document.removePositionUpdater((IPositionUpdater)updater);
            try {
                document.removePositionCategory(this.getCategory());
            }
            catch (BadPositionCategoryException badPositionCategoryException) {
                Assert.isTrue((boolean)false);
            }
            this.caretOffset = caretPosition.getOffset();
        }
    }

    private boolean updateCaret() {
        return this.shiftsCaret && this.caretOffset != -1;
    }

    private String getCategory() {
        return this.toString();
    }

    private static class Command
    implements Comparable {
        private final int fOffset;
        private final int fLength;
        private final String fText;
        private final IDocumentListener fOwner;

        public Command(int offset, int length, String text, IDocumentListener owner) {
            if (offset < 0 || length < 0) {
                throw new IllegalArgumentException();
            }
            this.fOffset = offset;
            this.fLength = length;
            this.fText = text;
            this.fOwner = owner;
        }

        public void execute(IDocument document) throws BadLocationException {
            if (this.fLength == 0 && this.fText == null) {
                return;
            }
            if (this.fOwner != null) {
                document.removeDocumentListener(this.fOwner);
            }
            document.replace(this.fOffset, this.fLength, this.fText);
            if (this.fOwner != null) {
                document.addDocumentListener(this.fOwner);
            }
        }

        public int compareTo(Object object) {
            int value;
            if (this.isEqual(object)) {
                return 0;
            }
            Command command = (Command)object;
            if ((this.fOffset + this.fLength <= command.fOffset || command.fOffset + command.fLength <= this.fOffset) && (value = 2 * this.fOffset + this.fLength - (2 * command.fOffset + command.fLength)) != 0) {
                return value;
            }
            return 42;
        }

        private boolean isEqual(Object object) {
            if (object == this) {
                return true;
            }
            if (!(object instanceof Command)) {
                return false;
            }
            Command command = (Command)object;
            return command.fOffset == this.fOffset && command.fLength == this.fLength;
        }
    }

    private static class CommandIterator
    implements Iterator {
        private final Iterator fIterator;
        private Command fCommand;
        private boolean fForward;

        public CommandIterator(List commands, Command command, boolean forward) {
            if (commands == null || command == null) {
                throw new IllegalArgumentException();
            }
            this.fIterator = forward ? commands.iterator() : new ReverseListIterator(commands.listIterator(commands.size()));
            this.fCommand = command;
            this.fForward = forward;
        }

        public boolean hasNext() {
            return this.fCommand != null || this.fIterator.hasNext();
        }

        public Object next() {
            if (!this.hasNext()) {
                throw new NoSuchElementException();
            }
            if (this.fCommand == null) {
                return this.fIterator.next();
            }
            if (!this.fIterator.hasNext()) {
                Command tempCommand = this.fCommand;
                this.fCommand = null;
                return tempCommand;
            }
            Command command = (Command)this.fIterator.next();
            int compareValue = command.compareTo(this.fCommand);
            if (compareValue < 0 ^ !this.fForward) {
                return command;
            }
            if (compareValue > 0 ^ !this.fForward) {
                Command tempCommand = this.fCommand;
                this.fCommand = command;
                return tempCommand;
            }
            throw new IllegalArgumentException();
        }

        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    private static class ReverseListIterator
    implements Iterator {
        private final ListIterator fListIterator;

        public ReverseListIterator(ListIterator listIterator) {
            if (listIterator == null) {
                throw new IllegalArgumentException();
            }
            this.fListIterator = listIterator;
        }

        public boolean hasNext() {
            return this.fListIterator.hasPrevious();
        }

        public Object next() {
            return this.fListIterator.previous();
        }

        public void remove() {
            throw new UnsupportedOperationException();
        }
    }
}

