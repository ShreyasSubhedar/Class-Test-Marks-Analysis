<%-- 
    Document   : studentInfoPortal
    Created on : Apr 15, 2019, 8:41:54 PM
    Author     : Shreyas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><%
     out.println("<h1>Hello "+session.getAttribute("name")+" "+session.getAttribute("rollno")+"</h1>");
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Information About CSE Department</h1><form action="ctMarksStudentView.jsp" method="POST">
            <input type="submit" value="Check CT Marks"/>
        </form>
        <p>Computer science and engineering (CSE) is an academic program at some universities that integrates the fields of computer engineering and computer science. It is a sub-field of electronic engineering, covering only the digital aspects of electronics engineering, specializing in hardware-systems areas like computer architecture, processor design, high-performance computing, parallel processing, computer networks and embedded systems. CSE programs also include core subjects of computer science such as operating systems, theory of computation, design and analysis of algorithms, data structures and database systems. The program aims at designing, developing and troubleshooting computing devices (such as personal computers, supercomputers, robots, smartphones, networking devices, embedded devices), focusing the underlying fundamental issues (like processor architecture design, operating system design, memory management, digital system design, communication protocol design, software development and database management) in the most efficient and effective way.

Computer science programs typically centers primarily around theory and software, with only some hardware[1]; upper division courses tend to allow a lot of freedom to specialize in software and theory related areas (e.g. algorithms, artificial intelligence, cryptography/security, graphics/visualization, numerical and symbolic computing, operating systems/distributed processing, software engineering).

Computer engineering programs tend to resemble computer science at the lower division with similar introductory programming and math courses, but diverges from computer science at the upper division with heavy electrical engineering requirements (e.g. digital and analog circuits, integrated circuit design, VLSI design and control systems). Despite the overlap with computer science at the lower division level, computer engineering skews much more heavily toward the electronics side that it has more in common with electrical engineering.

Computer Science and Engineering integrates all of the above and is intended to develop a solid understanding of the entire machine (computer hardware and software).[2] The higher unit count required to complete the program often means that a CSE student will need to spend an extra year in university.

Although Computer Science and Engineering is the common designation for the combined program, some universities (such as Berkeley and MIT) deviate by calling their program Electrical Engineering and Computer Science (EECS)[3]. Furthermore, there are some universities (such as UCI and UC Merced) that named their department EECS and the program housed within CSE.</p>
        <h1>Information About IT Department</h1>
        <p>Information technology (IT) is the use of computers to store, retrieve, transmit, and manipulate data,[1] or information, often in the context of a business or other enterprise.[2] IT is considered to be a subset of information and communications technology (ICT). An information technology system (IT system) is generally an information system, a communications system or, more specifically speaking, a computer system – including all hardware, software and peripheral equipment – operated by a limited group of users.

Humans have been storing, retrieving, manipulating, and communicating information since the Sumerians in Mesopotamia developed writing in about 3000 BC,[3] but the term information technology in its modern sense first appeared in a 1958 article published in the Harvard Business Review; authors Harold J. Leavitt and Thomas L. Whisler commented that "the new technology does not yet have a single established name. We shall call it information technology (IT)." Their definition consists of three categories: techniques for processing, the application of statistical and mathematical methods to decision-making, and the simulation of higher-order thinking through computer programs.[4]

The term is commonly used as a synonym for computers and computer networks, but it also encompasses other information distribution technologies such as television and telephones. Several products or services within an economy are associated with information technology, including computer hardware, software, electronics, semiconductors, internet, telecom equipment, and e-commerce.[5][a]

Based on the storage and processing technologies employed, it is possible to distinguish four distinct phases of IT development: pre-mechanical (3000 BC – 1450 AD), mechanical (1450–1840), electromechanical (1840–1940), and electronic (1940–present).[3] This article focuses on the most recent period (electronic), which began in about 1940.</p>
   <h1>Information About ENTC Department</h1>
        <p>Electronic engineering (also called electronics and communications engineering) is an electrical engineering discipline which utilizes nonlinear and active electrical components (such as semiconductor devices, especially transistors, diodes and integrated circuits) to design electronic circuits, devices, VLSI devices and their systems. The discipline typically also designs passive electrical components, usually based on printed circuit boards.

Electronics is a subfield within the wider electrical engineering academic subject but denotes a broad engineering field that covers subfields such as analog electronics, digital electronics, consumer electronics, embedded systems and power electronics. Electronics engineering deals with implementation of applications, principles and algorithms developed within many related fields, for example solid-state physics, radio engineering, telecommunications, control systems, signal processing, systems engineering, computer engineering, instrumentation engineering, electric power control, robotics, and many others.

The Institute of Electrical and Electronics Engineers (IEEE) is one of the most important and influential organizations for electronics engineers.</p>   
        
    </body>
</html>
