# Computer Systems(3E)

![rw-book-cover](https://readwise-assets.s3.amazonaws.com/media/reader/parsed_document_assets/223805057/opvVILSLpMr4f965bv9cLHD3BsfHvkO6zJe-Tf6UDsA-cove_NQCqrp7.png)

## Metadata
- Author: [[Bryant, Randal; O'Hallaron, David;]]
- Full Title: Computer Systems(3E)
- Category: #articles
- Summary: The text explains the relationship between C, assembly code, and machine code, focusing on x86-64 architecture. It covers how control structures, procedures, and data structures are implemented at the machine level, along with potential vulnerabilities like buffer overflow attacks. The chapter also discusses the roles of different registers and how operations are executed in a program.
- URL: https://readwise.io/reader/document_raw_content/223805057

## Highlights
- gibberish. ([View Highlight](https://read.readwise.io/read/01j9rpvk4mp9nm4hqxyavweqpn))
    - Note: gibberish (noun): nonsensical or meaningless speech; unintelligible talk 🗣️🤪

## New highlights added October 24, 2024 at 4:29 PM
- gibberish ([View Highlight](https://read.readwise.io/read/01j9xnxbda61wyhwpq44721zaf))
    - Note: gibberish (noun): nonsensical or meaningless language; unintelligible speech 🗣️🤪

## New highlights added February 5, 2025 at 3:30 PM
- Every computer has a word size, indicating the nominal size of pointer data. Since a virtual address is encoded by such a word, the most important system parameter determined by the word size is the maximum size of the virtual address space. That is, for a machine with a w-bit word size, the virtual addresses can range from 0 to 2w − 1, giving the program access to at most 2w bytes. ([View Highlight](https://read.readwise.io/read/01jkbv4s4946raxecb97r5e571))

## New highlights added February 5, 2025 at 4:30 PM
- Figure 2.3 also shows that a pointer (e.g., a variable declared as being of type char *) uses the full word size of the program. ([View Highlight](https://read.readwise.io/read/01jkbzbvy73b9pazjj5wrv4fsv))

## New highlights added February 5, 2025 at 9:30 PM
- Somemachines choose to store the ob- ject in memory ordered from least signiﬁcant byte to most, while other machines store them from most to least. The former convention—where the least signiﬁcant byte comes ﬁrst—is referred to as little endian. The latter convention—where the most signiﬁcant byte comes ﬁrst—is referred to as big endian. ([View Highlight](https://read.readwise.io/read/01jkchchn42tab587zc0jz6fdb))

## New highlights added February 5, 2025 at 10:30 PM
- Most Intel-compatible machines operate exclusively in little-endian mode. ([View Highlight](https://read.readwise.io/read/01jkcjjnneag748kj9qm4421ze))

- Many recent microprocessor chips are bi-endian, meaning that they can be conﬁgured to operate as either little- or big-endian machines. In practice, however, byte ordering becomes ﬁxed once a particular operating system is chosen. For example, ARM microprocessors, used in many cell phones, have hardware that can operate in either little- or big-endian mode, but the two most common operating systems for these chips—Android (from Google) and IOS (from Apple)—operate only in little-endian mode. ([View Highlight](https://read.readwise.io/read/01jkcjvwfvvv4ps0w0g8p44rn5))

## New highlights added February 7, 2025 at 4:31 AM
- One useful application of bit vectors is to represent finite sets. We can encode
  any subsetA⊆{0, 1, ... , w − 1} with a bit vector [aw−1,. . .,a1,a0], where ai = 1if and only if i ∈A. ([View Highlight](https://read.readwise.io/read/01jkfvehas0x8a5mkcgjcz0h81))

## New highlights added February 7, 2025 at 5:23 PM
- . In practice, however, almost all compiler/machine combinations use arithmetic right shifts for signed data, and many programmers assume this to be the case. For unsigned data, on the other hand, right shifts must be logical. ([View Highlight](https://read.readwise.io/read/01jkh78mfepk1n7zrnf7zhe09k))

## New highlights added February 8, 2025 at 5:01 AM
- UMax has the same bit representation in un- signed form as does−1 in two’s-complement form. ([View Highlight](https://read.readwise.io/read/01jkjfg331b630pthtpvz76crv))

## New highlights added February 8, 2025 at 5:10 PM
- ![](https://readwise-assets.s3.amazonaws.com/media/reader/pub/fc46ebd993dd14570f0b86622d3245f9.png) ([View Highlight](https://read.readwise.io/read/01jkkskdre90qed7wr4r43x742))

## New highlights added February 8, 2025 at 6:10 PM
- When an operation is performed where one operand is signed and the other is unsigned, C implicitly casts the signed argument to unsigned and performs the operations ([View Highlight](https://read.readwise.io/read/01jkktd6ytkxq5x9k9abt7rka1))

## New highlights added March 25, 2025 at 11:37 PM
- ![](https://readwise-assets.s3.amazonaws.com/media/reader/pub/74f4780607d7a834e28101ac900b0713.png)?t=1742957992820 ([View Highlight](https://read.readwise.io/read/01jq868hqqdadx1fp1xzm4bz49))

- The ELF header begins with a 16-byte sequence that describes the word size and byte ordering of the system that generated the ﬁle. The rest of the ELF header contains information that allows a linker to parse and interpret the object ﬁle. This includes the size of the ELF header, the object ﬁle type (e.g., relocatable, executable, or shared), the machine type (e.g., x86-64), the ﬁle offset of the section header table, and the size and number of entries in the section header table. ([View Highlight](https://read.readwise.io/read/01jq86apze58b062pntkbpn98v))

- The locations and sizes of the various sections are described by the section header table, which contains a ﬁxed-size entry for each section in the object ﬁle. ([View Highlight](https://read.readwise.io/read/01jq86bvvbb04yyz59kts4ajkg))

- .text The machine code of the compiled program. ([View Highlight](https://read.readwise.io/read/01jq86hkwve649e1nhaqh00nay))

- .rodata Read-only data such as the format strings in printf statements, and jump tables for switch statements. ([View Highlight](https://read.readwise.io/read/01jq86hpwd9z5m4esn1ffkphmx))

- .data Initialized global and staticCvariables. LocalCvariables are maintained at run time on the stack and do not appear in either the .data or .bss sections. ([View Highlight](https://read.readwise.io/read/01jq86hsecd0fc3nj4xgmhdxvj))

- .bss Uninitialized global and static C variables, along with any global or static variables that are initialized to zero. This section occupies no actual space in the object ﬁle; it is merely a placeholder. Object ﬁle formats distinguish between initialized and uninitialized variables for space efﬁciency: unini- tialized variables do not have to occupy any actual disk space in the object ﬁle. At run time, these variables are allocated in memory with an initial value of zero. ([View Highlight](https://read.readwise.io/read/01jq86y2q9gpc0ch6xhtw7aztx))

- .symtab A symbol table with information about functions and global variables that are deﬁned and referenced in the program. ([View Highlight](https://read.readwise.io/read/01jq8787d5pn66wmda07hfh0k7))

