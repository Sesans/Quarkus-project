CREATE TABLE elections (
    id VARCHAR(40) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);

CREATE TABLE election_candidate (
    election_id VARCHAR(40) NOT NULL,
    candidate_id VARCHAR(40) NOT NULL,
    votes INTEGER DEFAULT 0,
    PRIMARY KEY (election_id, candidate_id)
);

INSERT INTO candidates (id, photo, given_name, family_name, email, phone, job_title, created_at, updated_at) VALUES
('aea6f232-271e-454a-9a15-a92d617529b6', null, 'Aleksandr', 'Duker', 'aduker0@jimdo.com', '(924) 8825476', 'Recruiter', '2025-02-10 09:47:59', '2025-05-21 10:34:24'),
('7567b4b4-0e94-45d4-9294-6cc3d3fe107c', 'http://dummyimage.com/35x67.png/ff4444/ffffff', 'Cecil', 'Hunn', 'chunn1@si.edu', null, 'Payment Adjustment Coordinator', '2025-08-13 06:16:04', '2025-08-20 10:27:19'),
('dcb75d68-8db4-42df-bac4-2a5d6ddaf544', 'http://dummyimage.com/35x53.png/dddddd/000000', 'Rahal', 'Merriott', 'rmerriott2@cnbc.com', '(701) 7692335', 'Recruiting Manager', '2025-03-23 01:48:57', '2024-11-27 06:35:59'),
('93036677-2aeb-4186-a5f3-982e49708bb2', 'http://dummyimage.com/38x83.png/5fa2dd/ffffff', 'Haley', 'Donnersberg', 'hdonnersberg3@reference.com', '(871) 6245587', null, '2025-06-14 04:28:55', '2024-11-08 20:05:59'),
('c3e2553d-1154-41b3-a7aa-34b6234619b9', 'http://dummyimage.com/56x61.png/cc0000/ffffff', 'Caria', 'Ingon', 'cingon4@phpbb.com', '(523) 5990575', 'Software Consultant', '2024-12-26 17:30:37', '2025-09-09 14:50:53'),
('ffe24856-f055-4c78-b7a0-9f846bdc2e6b', 'http://dummyimage.com/80x87.png/cc0000/ffffff', 'Gladys', 'Calley', 'gcalley5@ft.com', '(787) 8057692', null, '2025-02-28 08:52:50', '2025-03-12 06:54:40'),
('b46572bd-47af-4b0e-8276-2614e1fd2b3b', 'http://dummyimage.com/29x91.png/dddddd/000000', 'Tillie', 'Punton', 'tpunton6@multiply.com', '(686) 4053536', 'Electrical Engineer', '2025-03-05 02:32:09', '2024-11-19 06:51:20'),
('5f5c0281-54d8-4367-a243-f01a351f222b', 'http://dummyimage.com/99x66.png/cc0000/ffffff', 'Harp', 'Kerins', 'hkerins7@google.com', '(174) 2879319', 'Associate Professor', '2025-06-05 16:48:24', '2025-01-26 03:36:30'),
('6e959c2d-02f6-4093-baea-dc74911e344a', 'http://dummyimage.com/85x73.png/dddddd/000000', 'Candra', 'Mortlock', 'cmortlock8@tripadvisor.com', '(166) 5626363', 'Payment Adjustment Coordinator', '2024-12-03 04:03:10', '2025-02-14 17:15:00'),
('f0423255-b2cb-48f4-a39f-76b87095ce94', 'http://dummyimage.com/90x76.png/ff4444/ffffff', 'Malvin', 'Oke', 'moke9@smh.com.au', '(472) 9202575', 'Desktop Support Technician', '2025-08-21 07:17:48', '2025-05-27 02:28:25'),
('301f0c60-bb76-4ea2-bda4-fbef970ce142', 'http://dummyimage.com/41x70.png/5fa2dd/ffffff', 'Clarette', 'Hackford', 'chackforda@goo.ne.jp', null, 'Actuary', '2024-10-14 10:19:21', '2024-10-28 16:18:35'),
('5b2e0f1a-5db1-487f-a23d-28d721df3f33', 'http://dummyimage.com/68x90.png/ff4444/ffffff', 'Harmonie', 'Whetton', 'hwhettonb@ameblo.jp', '(796) 7537566', 'Human Resources Manager', '2024-12-23 14:49:06', '2025-09-20 02:46:45'),
('467e36c3-8d84-4d2a-af70-b43eead3761e', 'http://dummyimage.com/93x59.png/ff4444/ffffff', 'Gunar', 'Astles', 'gastlesc@sciencedirect.com', '(629) 9026855', 'VP Product Management', '2025-01-22 01:40:51', '2025-08-23 05:33:47'),
('43a80d80-94b1-4733-9c56-e2b64582a8dc', 'http://dummyimage.com/62x79.png/ff4444/ffffff', 'Fern', 'Leverage', 'fleveraged@soup.io', '(489) 9519125', 'Physical Therapy Assistant', '2025-01-12 13:16:14', '2025-03-11 10:15:21'),
('d399e3cd-37f0-43e6-b499-81818b259a0d', 'http://dummyimage.com/81x86.png/cc0000/ffffff', 'Phyllida', 'Calverd', 'pcalverde@bravesites.com', '(839) 2973662', 'Cost Accountant', '2025-03-02 08:00:16', '2024-12-04 21:47:18'),
('a7d68ddf-bb39-4637-91f6-cbb07eb2f862', 'http://dummyimage.com/91x64.png/ff4444/ffffff', 'Addie', 'Isakovic', 'aisakovicf@shutterfly.com', '(542) 6836495', 'VP Product Management', '2025-05-22 21:21:52', '2024-11-18 05:09:09'),
('6ebf73e3-965c-4cbc-984d-6d01fe6a6154', 'http://dummyimage.com/26x97.png/ff4444/ffffff', 'Starr', 'Hallagan', 'shallagang@businessinsider.com', null, 'Community Outreach Specialist', '2025-07-26 08:04:42', '2025-06-29 17:25:02'),
('aeccf23f-2733-4086-af57-42fdefc88955', 'http://dummyimage.com/63x88.png/dddddd/000000', 'Dickie', 'Dollimore', 'ddollimoreh@va.gov', '(157) 9578037', 'Health Coach I', '2025-01-03 00:08:56', '2024-12-05 07:14:27'),
('fc85f2cc-2e86-4ead-9ca2-823d7e6c5293', 'http://dummyimage.com/86x80.png/5fa2dd/ffffff', 'Clovis', 'Iddison', 'ciddisoni@hugedomains.com', '(322) 2648395', 'Environmental Tech', '2025-01-17 21:50:41', '2024-10-08 05:37:23'),
('84b13f93-6097-4bec-9d11-94842c01c99c', 'http://dummyimage.com/98x100.png/5fa2dd/ffffff', 'Amabelle', 'Narramore', 'anarramorej@i2i.jp', '(872) 5432020', 'Computer Systems Analyst IV', '2025-03-01 05:02:31', '2025-01-06 02:43:08');