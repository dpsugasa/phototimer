import dropbox

access_token = 'CGJHO58HrOoAAAAAAAAAAYBMFqmohmaPzv0vlrU4jEaUImluPFnvfHjDVd2sB9q1'
#file_from = '2021_1_26_19_1611687610393.jpg'  # //local file path
#file_to = '/Upload_Tester_Checker/2021_1_26_19_1611687610393.jpg'  # // dropbox path


class DboxUploader:
    def __init__(self, access_token, file_from, file_to):
        self.access_token = access_token
        self.file_from = file_from
        self.file_to = file_to

    def upload_file(self):
        dbx = dropbox.Dropbox(self.access_token)
        f = open(self.file_from, 'rb')
        dbx.files_upload(f.read(), self.file_to)


#DboxUploader(access_token,file_from, file_to).upload_file()
